package §`6§
{
   import §&o§.DisplayObject;
   import §'j§.§3!!§;
   import §0! §.Texture;
   import §<t§.§!F§;
   import §=!0§.§2N§;
   import §=!0§.§>4§;
   import §=!0§.§>I§;
   import §[!+§.§"N§;
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
   
   public class §&U§ extends DisplayObject implements §"N§
   {
       
      
      private var §;p§:Texture;
      
      private var §<^§:Vector.<§61§>;
      
      private var §+x§:Number;
      
      private var §"!,§:Vector.<Number>;
      
      private var §"L§:Vector.<Number>;
      
      private var §,Y§:§3!!§;
      
      private var §!f§:VertexBuffer3D;
      
      private var §;!'§:VertexBuffer3D;
      
      private var §#f§:VertexBuffer3D;
      
      private var §8W§:Vector.<uint>;
      
      private var §5,§:IndexBuffer3D;
      
      private var §!X§:int;
      
      private var §<y§:int;
      
      private var §9G§:Number;
      
      protected var §]!?§:Number;
      
      private var §]W§:Number = 0.0;
      
      private var §9?§:Number;
      
      protected var §@m§:Number;
      
      protected var §1!F§:Number;
      
      protected var §7R§:Boolean;
      
      protected var §@s§:String;
      
      protected var §"k§:String;
      
      protected var §#E§:String;
      
      private var §3!H§:int = -1;
      
      private var §'!H§:Boolean = false;
      
      private var §@k§:Number = 0.0;
      
      public function §&U§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super();
            if(param1 == null)
            {
               if(_loc8_ || this)
               {
                  throw new ArgumentError("texture must not be null");
               }
               addr71:
               this.§"!,§ = new Vector.<Number>();
               if(_loc8_ || this)
               {
                  this.§"L§ = new Vector.<Number>();
                  if(!_loc7_)
                  {
                     this.§,Y§ = new §3!!§(0,this.§7R§);
                     if(!_loc7_)
                     {
                        addr101:
                        this.§8W§ = new Vector.<uint>(0);
                        §§goto(addr109);
                     }
                     §§goto(addr274);
                  }
                  §§goto(addr158);
               }
               §§goto(addr119);
            }
            else
            {
               this.§;p§ = param1;
               if(!(_loc7_ && this))
               {
                  this.§7R§ = param1.premultipliedAlpha;
                  this.§<^§ = new Vector.<§61§>(0,false);
                  if(!(_loc7_ && param2))
                  {
                     §§goto(addr71);
                  }
                  addr109:
                  this.§9G§ = param2;
                  if(_loc8_ || param1)
                  {
                     addr119:
                     this.§9?§ = 0;
                     if(_loc8_ || param2)
                     {
                        this.§+x§ = 0;
                        this.§@m§ = this.§1!F§ = 0;
                        if(!(_loc7_ && param3))
                        {
                           addr158:
                           §§push(this);
                           if(_loc8_ || param1)
                           {
                              §§push(param5);
                              if(!_loc7_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc7_ && param2))
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc8_ || param2)
                                       {
                                          §§pop();
                                          addr187:
                                          §§push(Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);
                                       }
                                    }
                                 }
                              }
                              §§pop().§"k§ = §§pop();
                              if(_loc8_ || param1)
                              {
                                 §§push(this);
                                 if(_loc8_)
                                 {
                                    §§push(param4);
                                    if(!(_loc7_ && param2))
                                    {
                                       §§push(§§pop());
                                       if(!(_loc7_ && param2))
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc8_ || this)
                                             {
                                                addr226:
                                                §§pop();
                                                if(_loc8_ || this)
                                                {
                                                   addr234:
                                                   if(!this.§7R§)
                                                   {
                                                      addr261:
                                                      §§pop().§@s§ = Context3DBlendFactor.SOURCE_ALPHA;
                                                      if(_loc8_ || param3)
                                                      {
                                                         §§goto(addr269);
                                                      }
                                                      §§goto(addr274);
                                                   }
                                                   §§goto(addr261);
                                                }
                                                §§push(Context3DBlendFactor.ONE);
                                                if(_loc7_ && param2)
                                                {
                                                }
                                                §§goto(addr261);
                                             }
                                          }
                                          §§goto(addr261);
                                       }
                                    }
                                    §§goto(addr226);
                                 }
                                 §§goto(addr234);
                              }
                              §§goto(addr274);
                           }
                           §§goto(addr187);
                        }
                     }
                     §§goto(addr274);
                  }
                  addr269:
                  if(param3 > 0)
                  {
                     if(_loc8_)
                     {
                        addr274:
                        this.§^M§(param3);
                     }
                     §§goto(addr277);
                  }
                  addr277:
                  return;
               }
            }
            §§goto(addr274);
         }
         §§goto(addr101);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§!f§)
            {
               this.§!f§.dispose();
            }
            if(this.§;!'§)
            {
               if(_loc2_ || this)
               {
                  this.§;!'§.dispose();
                  addr53:
                  if(this.§#f§)
                  {
                     this.§#f§.dispose();
                     if(_loc2_)
                     {
                        addr61:
                        if(this.§5,§)
                        {
                           if(!(_loc1_ && this))
                           {
                              this.§5,§.dispose();
                              if(_loc2_ || _loc1_)
                              {
                                 addr91:
                                 this.§"!,§ = null;
                                 this.§"L§ = null;
                                 if(_loc2_ || _loc1_)
                                 {
                                    addr104:
                                    super.dispose();
                                 }
                              }
                              §§goto(addr104);
                           }
                           return;
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr61);
               }
               §§goto(addr91);
            }
         }
         §§goto(addr53);
      }
      
      protected function createParticle() : §61§
      {
         return new §61§();
      }
      
      protected function initParticle(param1:§61§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         param1.x = this.§@m§;
         if(!_loc2_)
         {
            param1.y = this.§1!F§;
            param1.currentTime = 0;
            param1.§9t§ = 1;
            if(!(_loc2_ && this))
            {
               param1.red = Math.random();
               if(!(_loc2_ && _loc2_))
               {
                  addr71:
                  param1.green = Math.random();
                  if(!_loc2_)
                  {
                     param1.blue = Math.random();
                     if(!(_loc2_ && _loc2_))
                     {
                        addr88:
                        param1.alpha = 0;
                     }
                     return;
                  }
               }
            }
            §§goto(addr88);
         }
         §§goto(addr71);
      }
      
      protected function advanceParticle(param1:§61§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            §§push(param1.y);
            if(!_loc3_)
            {
               §§push(param2);
               if(_loc4_)
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
               if(_loc4_ || this)
               {
                  §§push(§§pop() / param1.§9t§);
               }
               §§pop().alpha = §§pop() - §§pop();
               if(!(_loc3_ && this))
               {
                  param1.scaleX = 1 - param1.alpha;
                  if(!_loc3_)
                  {
                     addr89:
                     param1.scaleY = 1 - param1.alpha;
                     if(_loc4_)
                     {
                        §§push(param1);
                        §§push(param1.currentTime);
                        if(_loc4_)
                        {
                           §§push(§§pop() + param2);
                        }
                        §§pop().currentTime = §§pop();
                     }
                  }
               }
               §§goto(addr89);
            }
            return;
         }
         §§goto(addr89);
      }
      
      private function §^M§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         §§push(this.§[J§);
         if(_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§[J§);
         if(!(_loc9_ && this))
         {
            §§push(int(§§pop() + param1));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§3!!§;
         (_loc4_ = new §3!!§(4)).setTexCoords(0,0,0);
         _loc4_.setTexCoords(1,1,0);
         if(!(_loc9_ && _loc2_))
         {
            _loc4_.setTexCoords(2,0,1);
            if(_loc8_)
            {
               addr68:
               _loc4_.setTexCoords(3,1,1);
               if(_loc8_ || param1)
               {
                  this.§;p§.adjustVertexData(_loc4_,0,4);
                  if(_loc8_ || _loc3_)
                  {
                     this.§<^§.fixed = false;
                     if(!(_loc9_ && _loc2_))
                     {
                        addr104:
                        this.§8W§.fixed = false;
                     }
                  }
               }
               §§push(_loc2_);
               if(_loc8_ || _loc3_)
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
                           if(!_loc9_)
                           {
                              this.§<^§.fixed = true;
                              if(_loc9_ && _loc3_)
                              {
                              }
                              addr259:
                              this.§'!H§ = true;
                              break;
                           }
                           this.§8W§.fixed = true;
                        }
                        else
                        {
                           §§push(_loc5_);
                           if(!_loc9_)
                           {
                              §§push(4);
                              if(!_loc8_)
                              {
                                 continue;
                              }
                              §§push(int(§§pop() * §§pop()));
                              if(_loc8_ || _loc2_)
                              {
                                 _loc6_ = §§pop();
                                 if(_loc8_ || this)
                                 {
                                    this.§<^§.push(this.createParticle());
                                    if(!_loc9_)
                                    {
                                       §§push(0);
                                       if(_loc9_)
                                       {
                                          continue loop1;
                                       }
                                       _loc7_ = §§pop();
                                       if(_loc9_ && param1)
                                       {
                                       }
                                       loop3:
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          if(_loc9_ && param1)
                                          {
                                             continue loop1;
                                          }
                                          while(true)
                                          {
                                             §§push(3);
                                             if(_loc8_)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   this.§8W§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
                                                   _loc5_++;
                                                   addr209:
                                                }
                                                else
                                                {
                                                   this.§"!,§.push(0);
                                                   this.§"L§.push(0);
                                                   if(_loc8_ || param1)
                                                   {
                                                      _loc7_++;
                                                      if(_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                                continue loop0;
                                             }
                                             continue loop2;
                                          }
                                          this.§,Y§.append(_loc4_);
                                          §§goto(addr209);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr259);
                                    }
                                 }
                                 break;
                              }
                           }
                           §§goto(addr199);
                        }
                        §§goto(addr259);
                     }
                     return;
                  }
               }
            }
            §§goto(addr104);
         }
         §§goto(addr68);
      }
      
      private function §]^§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(this.§'!H§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(false);
                  }
                  else
                  {
                     §§goto(addr50);
                  }
               }
               else
               {
                  if(param1 == null)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr50);
                     }
                  }
                  §§push(this.§,Y§.§`!6§);
                  if(_loc4_)
                  {
                     §§push(int(§§pop() / 4));
                  }
                  var _loc2_:* = §§pop();
                  if(this.§!f§)
                  {
                     this.§!f§.dispose();
                  }
                  if(this.§;!'§)
                  {
                     this.§;!'§.dispose();
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr81);
                     }
                     §§goto(addr102);
                  }
                  addr81:
                  if(this.§#f§)
                  {
                     this.§#f§.dispose();
                     if(!_loc4_)
                     {
                     }
                     addr102:
                     this.§5,§.dispose();
                     if(!_loc3_)
                     {
                        §§goto(addr107);
                     }
                     §§goto(addr153);
                  }
                  if(this.§5,§)
                  {
                     §§goto(addr102);
                  }
                  addr107:
                  this.§!f§ = param1.createVertexBuffer(_loc2_ * 4,§3!!§.§4!9§);
                  this.§!f§.uploadFromByteArray(this.§,Y§.§]o§,0,0,_loc2_ * 4);
                  this.§;!'§ = param1.createVertexBuffer(_loc2_ * 4,§3!!§.§<z§);
                  this.§;!'§.uploadFromVector(this.§,Y§.§-e§,0,_loc2_ * 4);
                  if(_loc4_ || _loc2_)
                  {
                     addr153:
                     this.§#f§ = param1.createVertexBuffer(_loc2_ * 4,§3!!§.§!B§);
                     this.§#f§.uploadFromVector(this.§,Y§.§#y§,0,_loc2_ * 4);
                  }
                  this.§5,§ = param1.createIndexBuffer(_loc2_ * 6);
                  if(!_loc3_)
                  {
                     this.§5,§.uploadFromVector(this.§8W§,0,_loc2_ * 6);
                  }
                  return true;
               }
               §§goto(addr50);
            }
            return §§pop();
         }
         addr50:
         throw new §!F§();
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§9G§ != 0)
            {
               if(!_loc2_)
               {
                  this.§9?§ = param1;
               }
            }
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§9?§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Matrix = §&M§(param1);
         var _loc4_:Point = _loc3_.transformPoint(new Point(x,y));
         if(!(_loc6_ && param1))
         {
            if(param2 == null)
            {
               if(!_loc6_)
               {
                  return new Rectangle(_loc4_.x,_loc4_.y);
               }
            }
            else
            {
               addr68:
               param2.x = _loc4_.x;
               if(_loc5_ || param2)
               {
                  param2.y = _loc4_.y;
                  if(_loc5_)
                  {
                     param2.width = 0;
                     addr88:
                     param2.height = 0;
                  }
                  return param2;
               }
            }
            §§goto(addr88);
         }
         §§goto(addr68);
      }
      
      public function §9!8§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.advanceTime(param1);
            if(_loc2_ || _loc3_)
            {
               this.§6!4§(null);
            }
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@k§ = param1;
         }
      }
      
      private function §6!4§(param1:Matrix3D) : void
      {
         var _loc34_:Boolean = false;
         var _loc35_:Boolean = true;
         var _loc4_:§61§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc11_:§61§ = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = 0;
         var _loc15_:* = false;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:* = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:* = NaN;
         var _loc29_:* = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         if(_loc35_)
         {
            §§push(Boolean(isNaN(this.§@k§)));
            if(!(_loc34_ && _loc3_))
            {
               if(!§§pop())
               {
                  if(!(_loc34_ && this))
                  {
                     addr90:
                     §§pop();
                     if(!_loc34_)
                     {
                        addr93:
                        §§push(this.§@k§);
                        if(_loc35_)
                        {
                           addr99:
                           if(§§pop() == 0)
                           {
                              if(_loc35_ || this)
                              {
                                 return;
                              }
                              addr108:
                              §§push(this.§@k§);
                              if(!_loc34_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§goto(addr108);
                        }
                        var _loc2_:* = §§pop();
                        if(_loc35_)
                        {
                           this.§@k§ = 0;
                           if(!(_loc34_ && this))
                           {
                              _loc2_ = Number(Math.min(0.2,_loc2_));
                           }
                        }
                        var _loc3_:int = 0;
                        loop0:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!_loc34_)
                           {
                              §§push(this.§!X§);
                              if(_loc35_ || param1)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if((_loc4_ = this.§<^§[_loc3_]).currentTime < _loc4_.§9t§)
                                    {
                                       if(!(_loc35_ || this))
                                       {
                                          continue;
                                       }
                                       this.advanceParticle(_loc4_,_loc2_);
                                       if(_loc34_)
                                       {
                                          continue;
                                       }
                                       _loc3_++;
                                       if(_loc35_ || this)
                                       {
                                          continue;
                                       }
                                       addr181:
                                       _loc11_ = this.§<^§[this.§!X§ - 1];
                                       if(_loc35_)
                                       {
                                          this.§<^§[this.§!X§ - 1] = _loc4_;
                                          if(!_loc34_)
                                          {
                                             this.§<^§[_loc3_] = _loc11_;
                                          }
                                       }
                                    }
                                    else if(_loc3_ != this.§!X§ - 1)
                                    {
                                       if(_loc34_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr181);
                                    }
                                    var _loc32_:*;
                                    §§push((_loc32_ = this).§!X§);
                                    if(!_loc34_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    var _loc33_:* = §§pop();
                                    if(!_loc34_)
                                    {
                                       _loc32_.§!X§ = _loc33_;
                                    }
                                    continue;
                                 }
                                 if(!_loc34_)
                                 {
                                    §§push(this.§9?§);
                                    if(_loc35_)
                                    {
                                       §§push(0);
                                       if(!_loc34_)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             if(_loc35_ || _loc3_)
                                             {
                                                §§push(1);
                                                if(!(_loc34_ && param1))
                                                {
                                                   §§push(§§pop() / this.§9G§);
                                                   if(_loc35_ || _loc2_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc34_)
                                                      {
                                                      }
                                                      addr447:
                                                      if(§§pop() != Number.MAX_VALUE)
                                                      {
                                                         if(!_loc34_)
                                                         {
                                                            this.§9?§ = Math.max(0,this.§9?§ - _loc2_);
                                                            addr461:
                                                            break;
                                                         }
                                                      }
                                                      §§goto(addr461);
                                                   }
                                                   _loc12_ = §§pop();
                                                   if(!(_loc34_ && this))
                                                   {
                                                      §§push(this);
                                                      §§push(this.§+x§);
                                                      if(_loc35_)
                                                      {
                                                         §§push(§§pop() + _loc2_);
                                                      }
                                                      §§pop().§+x§ = §§pop();
                                                      addr287:
                                                      loop4:
                                                      while(true)
                                                      {
                                                         §§push(this.§+x§);
                                                         if(!_loc34_)
                                                         {
                                                            addr443:
                                                            §§push(0);
                                                            while(true)
                                                            {
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  §§push(this.§!X§);
                                                                  if(!(_loc35_ || _loc3_))
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  §§push(this.§[J§);
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        this.§^M§(this.§[J§);
                                                                     }
                                                                     _loc4_ = this.§<^§[this.§!X§++] as §61§;
                                                                     this.initParticle(_loc4_);
                                                                     if(!(_loc34_ && _loc2_))
                                                                     {
                                                                        this.advanceParticle(_loc4_,this.§+x§);
                                                                     }
                                                                     §§push(_loc12_);
                                                                     if(_loc35_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc35_)
                                                                        {
                                                                           addr345:
                                                                           _loc13_ = §§pop();
                                                                           if(!isNaN(this.§]!?§))
                                                                           {
                                                                              §§push(_loc12_);
                                                                              if(!(_loc34_ && this))
                                                                              {
                                                                                 addr359:
                                                                                 §§push(1 - this.§]!?§);
                                                                                 if(_loc35_)
                                                                                 {
                                                                                    §§push(Math.random() * this.§]!?§);
                                                                                    if(_loc35_)
                                                                                    {
                                                                                       §§push(§§pop() * 2);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc34_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc34_ && _loc2_))
                                                                                       {
                                                                                          addr392:
                                                                                          §§push(§§pop() + this.§]W§);
                                                                                          if(!(_loc34_ && this))
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       _loc13_ = §§pop();
                                                                                       addr402:
                                                                                       §§push(this);
                                                                                       §§push(this.§]W§);
                                                                                       if(!(_loc34_ && _loc2_))
                                                                                       {
                                                                                          §§push(_loc12_);
                                                                                          if(_loc35_)
                                                                                          {
                                                                                             §§push(§§pop() - _loc13_);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       §§pop().§]W§ = §§pop();
                                                                                       if(!(_loc34_ && this))
                                                                                       {
                                                                                          §§push(this);
                                                                                          §§push(this.§+x§);
                                                                                          if(_loc35_ || _loc3_)
                                                                                          {
                                                                                             §§push(§§pop() - _loc13_);
                                                                                          }
                                                                                          §§pop().§+x§ = §§pop();
                                                                                       }
                                                                                       continue loop4;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr392);
                                                                           }
                                                                           §§goto(addr402);
                                                                        }
                                                                        §§goto(addr359);
                                                                     }
                                                                     §§goto(addr345);
                                                                  }
                                                               }
                                                               §§goto(addr443);
                                                            }
                                                            addr444:
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr447);
                                                   }
                                                   §§goto(addr287);
                                                }
                                                break;
                                             }
                                             §§goto(addr447);
                                             §§push(this.§9?§);
                                          }
                                          §§goto(addr461);
                                       }
                                       §§goto(addr444);
                                    }
                                    §§goto(addr447);
                                 }
                                 §§goto(addr287);
                              }
                              §§goto(addr300);
                           }
                           break;
                        }
                        var _loc5_:* = §§pop();
                        §§push(this.§;p§.width);
                        if(_loc35_ || this)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc8_:* = §§pop();
                        §§push(this.§;p§.height);
                        if(!(_loc34_ && this))
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc9_:* = §§pop();
                        if(_loc35_)
                        {
                           this.§<y§ = 0;
                        }
                        var _loc10_:Vector3D = new Vector3D();
                        if(_loc35_ || _loc2_)
                        {
                           if(param1)
                           {
                              if(_loc35_)
                              {
                                 this.§?x§(param1);
                                 if(_loc35_)
                                 {
                                    addr512:
                                    §§push(0);
                                    if(!_loc34_)
                                    {
                                       _loc14_ = §§pop();
                                       if(!(_loc34_ && _loc3_))
                                       {
                                          addr523:
                                          while(true)
                                          {
                                             §§push(_loc14_);
                                          }
                                          addr1574:
                                          return;
                                          addr1570:
                                       }
                                       §§goto(addr1574);
                                    }
                                    while(true)
                                    {
                                       if(§§pop() >= this.§!X§)
                                       {
                                          §§goto(addr1574);
                                       }
                                       else
                                       {
                                          _loc6_ = (_loc4_ = this.§<^§[_loc14_]).x;
                                          if(!_loc34_)
                                          {
                                             §§push(_loc4_.y);
                                             if(_loc35_ || this)
                                             {
                                                _loc7_ = §§pop();
                                                if(_loc35_ || this)
                                                {
                                                   §§push(true);
                                                   if(!_loc34_)
                                                   {
                                                      _loc15_ = §§pop();
                                                      if(!(_loc34_ && _loc3_))
                                                      {
                                                         _loc10_.x = _loc6_;
                                                         if(_loc35_ || this)
                                                         {
                                                            _loc10_.y = _loc7_;
                                                            if(_loc35_ || this)
                                                            {
                                                               addr586:
                                                               _loc16_ = this.§"L§[_loc14_ * 3];
                                                               _loc17_ = this.§"L§[_loc14_ * 3 + 1];
                                                               §§push(_loc8_);
                                                               if(_loc35_ || _loc3_)
                                                               {
                                                                  §§push(_loc4_.scaleX);
                                                                  if(_loc35_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     §§push(2);
                                                                     if(_loc35_)
                                                                     {
                                                                        _loc18_ = §§pop() / §§pop();
                                                                        §§push(_loc9_);
                                                                        if(_loc35_ || _loc3_)
                                                                        {
                                                                           §§push(_loc4_.scaleY);
                                                                           if(_loc35_ || _loc2_)
                                                                           {
                                                                              addr640:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc35_)
                                                                              {
                                                                                 addr644:
                                                                                 §§push(§§pop() / 2);
                                                                                 if(_loc35_ || _loc2_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc35_)
                                                                                    {
                                                                                       _loc19_ = §§pop();
                                                                                       if(_loc35_ || param1)
                                                                                       {
                                                                                          §§push(_loc16_);
                                                                                          if(!_loc34_)
                                                                                          {
                                                                                             §§push(-1.1);
                                                                                             if(!_loc34_)
                                                                                             {
                                                                                                §§push(§§pop() < §§pop());
                                                                                                §§push(§§pop() < §§pop());
                                                                                                if(_loc35_ || _loc3_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(!_loc34_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         §§push(_loc16_);
                                                                                                         §§push(1.1);
                                                                                                         if(_loc35_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(§§pop() > §§pop());
                                                                                                            if(!(_loc34_ && _loc2_))
                                                                                                            {
                                                                                                               addr699:
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  addr701:
                                                                                                                  §§pop();
                                                                                                                  §§push(_loc17_);
                                                                                                                  if(!_loc34_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() < -1.1);
                                                                                                                     if(_loc35_)
                                                                                                                     {
                                                                                                                        addr709:
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           §§push(_loc17_);
                                                                                                                           §§push(1.1);
                                                                                                                           if(!_loc34_)
                                                                                                                           {
                                                                                                                              addr717:
                                                                                                                              if(§§pop() > §§pop())
                                                                                                                              {
                                                                                                                                 if(§>I§.§`S§)
                                                                                                                                 {
                                                                                                                                    if(!_loc34_)
                                                                                                                                    {
                                                                                                                                       _loc20_ = (_loc20_ = Math.max(_loc18_,_loc19_)) / §>I§.§`S§.§5_§;
                                                                                                                                       addr736:
                                                                                                                                       §§push(1.1 + _loc20_);
                                                                                                                                       if(!(_loc34_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr746:
                                                                                                                                          _loc21_ = §§pop();
                                                                                                                                          if(_loc35_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             addr756:
                                                                                                                                             §§push(_loc16_);
                                                                                                                                             §§push(_loc21_);
                                                                                                                                             if(_loc35_ || param1)
                                                                                                                                             {
                                                                                                                                                addr765:
                                                                                                                                                §§push(§§pop() < -§§pop());
                                                                                                                                                if(!(_loc34_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(_loc35_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc35_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            addr800:
                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                            if(_loc35_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                               if(!(_loc34_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  addr817:
                                                                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                                                                  if(!(§§pop() > §§pop()))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc35_)
                                                                                                                                                                     {
                                                                                                                                                                        addr821:
                                                                                                                                                                        §§pop();
                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                        §§push(_loc21_);
                                                                                                                                                                        if(!_loc34_)
                                                                                                                                                                        {
                                                                                                                                                                           addr826:
                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                           if(!(_loc34_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() < §§pop());
                                                                                                                                                                              if(_loc35_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr842:
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc34_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr851:
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       §§push(_loc17_);
                                                                                                                                                                                       if(!_loc34_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc21_);
                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr859:
                                                                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc35_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(false);
                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc15_ = §§pop();
                                                                                                                                                                                                      addr867:
                                                                                                                                                                                                      if(_loc15_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr868:
                                                                                                                                                                                                         §§push((_loc32_ = this).§<y§);
                                                                                                                                                                                                         if(!(_loc34_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + 1);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         _loc33_ = §§pop();
                                                                                                                                                                                                         if(!_loc34_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc32_.§<y§ = _loc33_;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!_loc34_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§,Y§);
                                                                                                                                                                                                            if(!_loc34_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(4);
                                                                                                                                                                                                                  if(!(_loc34_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().§-!1§(§§pop(),§§pop(),_loc4_.red,_loc4_.green,_loc4_.blue,_loc4_.alpha);
                                                                                                                                                                                                                     addr917:
                                                                                                                                                                                                                     §§push(_loc4_.rotation != 0);
                                                                                                                                                                                                                     if(_loc4_.rotation != 0)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc34_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                           addr931:
                                                                                                                                                                                                                           if(Math.abs(_loc18_ - _loc19_) > 0.5)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(Math.cos(_loc4_.rotation)));
                                                                                                                                                                                                                              if(_loc35_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc22_ = §§pop();
                                                                                                                                                                                                                                 if(_loc35_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(Math.sin(_loc4_.rotation)));
                                                                                                                                                                                                                                    if(_loc35_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc23_ = §§pop();
                                                                                                                                                                                                                                       §§push(_loc18_);
                                                                                                                                                                                                                                       §§push(_loc22_);
                                                                                                                                                                                                                                       if(!(_loc34_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          if(_loc35_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr972:
                                                                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                                                                             if(_loc35_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc23_);
                                                                                                                                                                                                                                                if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr996:
                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                      if(_loc35_ || _loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                         if(_loc35_ || this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc24_ = §§pop();
                                                                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                                                                            §§push(_loc23_);
                                                                                                                                                                                                                                                            if(!_loc34_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1018:
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                                                                               if(_loc35_ || _loc2_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1026:
                                                                                                                                                                                                                                                                  §§push(§§pop() * _loc22_);
                                                                                                                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1030:
                                                                                                                                                                                                                                                                     §§push(-(§§pop() + §§pop()));
                                                                                                                                                                                                                                                                     if(_loc35_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                        if(!_loc34_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc25_ = §§pop();
                                                                                                                                                                                                                                                                           §§push(-_loc18_);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(_loc22_);
                                                                                                                                                                                                                                                                        if(!_loc34_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1048:
                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                                                                                                                           §§push(_loc23_);
                                                                                                                                                                                                                                                                           if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                                                                                                                                              if(!(_loc34_ && _loc3_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1067:
                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                 if(_loc35_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc26_ = §§pop();
                                                                                                                                                                                                                                                                                    if(!_loc34_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc18_);
                                                                                                                                                                                                                                                                                       if(_loc35_ || _loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1081:
                                                                                                                                                                                                                                                                                          §§push(-§§pop());
                                                                                                                                                                                                                                                                                          if(!_loc34_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1084:
                                                                                                                                                                                                                                                                                             §§push(_loc23_);
                                                                                                                                                                                                                                                                                             if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                if(!_loc34_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                                                                                                                   §§push(_loc22_);
                                                                                                                                                                                                                                                                                                   if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1104:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1115:
                                                                                                                                                                                                                                                                                                         _loc27_ = -§§pop();
                                                                                                                                                                                                                                                                                                         if(!(_loc34_ && this))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1123:
                                                                                                                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                                                                                                                            §§push(_loc22_);
                                                                                                                                                                                                                                                                                                            if(_loc35_ || this)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1133:
                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                                                                                                                               §§push(_loc23_);
                                                                                                                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                  if(!_loc34_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     if(_loc35_ || this)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1148:
                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                        if(!_loc34_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           _loc28_ = §§pop();
                                                                                                                                                                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                           if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1160:
                                                                                                                                                                                                                                                                                                                              §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                              if(_loc35_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr1163:
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                 if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1171:
                                                                                                                                                                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                    if(_loc35_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                                       if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1184:
                                                                                                                                                                                                                                                                                                                                          §§push(Number(-(§§pop() - §§pop() * §§pop())));
                                                                                                                                                                                                                                                                                                                                          if(_loc35_ || this)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             _loc29_ = §§pop();
                                                                                                                                                                                                                                                                                                                                             addr1194:
                                                                                                                                                                                                                                                                                                                                             §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                             if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                                                if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc34_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr1230:
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr1223:
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc19_ * _loc23_);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr1234:
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                         if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr1237:
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                            if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1242:
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop() * _loc22_);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1242);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                                                         if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr1247:
                                                                                                                                                                                                                                                                                                                                                            _loc31_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                            addr1246:
                                                                                                                                                                                                                                                                                                                                                            §§push(this.§,Y§);
                                                                                                                                                                                                                                                                                                                                                            if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1253:
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                               if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc26_);
                                                                                                                                                                                                                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc34_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr1270:
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc27_);
                                                                                                                                                                                                                                                                                                                                                                           if(_loc35_ || this)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§pop().§=!3§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr1291:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(this.§,Y§);
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc35_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + 1);
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc24_);
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc25_);
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§pop().§=!3§(§§pop(),§§pop(),§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(this.§,Y§);
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(2);
                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc34_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr1333:
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc6_ + _loc30_);
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc35_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc35_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc31_);
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§pop().§=!3§(§§pop(),§§pop(),§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1355:
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(this.§,Y§);
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc35_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(3);
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              addr1376:
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc28_);
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc29_);
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1399:
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§pop().§=!3§(§§pop(),§§pop(),§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1557:
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1567:
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(int(§§pop() + 4));
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                             _loc14_++;
                                                                                                                                                                                                                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1403:
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1557);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1552:
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr1454:
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + _loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1461:
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc35_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1469:
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc35_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§pop().§=!3§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc34_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr1485:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(this.§,Y§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc34_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1497:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() + 2);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1501:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc35_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr1510:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() - _loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr1513:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr1517:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§pop().§=!3§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc34_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1533:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1531:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1530:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§,Y§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc5_ + 3);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc34_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1552);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1556:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§pop().§=!3§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1557);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1552);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1556);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1552);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1513);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1533);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1531);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1530);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1557);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1552);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1517);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1510);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1513);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1513);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1533);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           addr1443:
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1454);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1510);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1501);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1497);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1399);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1461);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1454);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1376);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1443);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1485);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1469);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1552);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1333);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       addr1407:
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc35_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr1419:
                                                                                                                                                                                                                                                                                                                                                                                             addr1418:
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             addr1424:
                                                                                                                                                                                                                                                                                                                                                                                             §§pop().§=!3§(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc34_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§push(this.§,Y§);
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc35_ || this)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1443);
                                                                                                                                                                                                                                                                                                                                                                                                §§push(1);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1497);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          addr1423:
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1424);
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - _loc19_);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1419);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1355);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1419);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1423);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1418);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1419);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1270);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1419);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1291);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1567);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1242);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr1225:
                                                                                                                                                                                                                                                                                                                                                   _loc30_ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                                                                                                   if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1230);
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1403);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1237);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1225);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1246);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1223);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1234);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1237);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1223);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1247);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1184);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1225);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1242);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1223);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1557);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1223);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1184);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1230);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1223);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1184);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1133);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1291);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1184);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1230);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1104);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1230);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1171);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1242);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1048);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1242);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1084);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1115);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1026);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1184);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1030);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1067);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1223);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1115);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1291);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1148);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§,Y§);
                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1407);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr931);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1443);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1253);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1533);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1355);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1557);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr867);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1557);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr867);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1163);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1160);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr931);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr859);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr867);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr996);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr917);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr851);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr842);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr826);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1115);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr851);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr817);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr842);
                                                                                                                                                }
                                                                                                                                                §§goto(addr821);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1223);
                                                                                                                                          }
                                                                                                                                          §§goto(addr868);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1230);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1194);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr867);
                                                                                                                           }
                                                                                                                           §§goto(addr765);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr717);
                                                                                                                  }
                                                                                                                  §§goto(addr1048);
                                                                                                               }
                                                                                                               §§goto(addr709);
                                                                                                            }
                                                                                                            §§goto(addr701);
                                                                                                         }
                                                                                                         §§goto(addr817);
                                                                                                      }
                                                                                                      §§goto(addr931);
                                                                                                   }
                                                                                                   §§goto(addr699);
                                                                                                }
                                                                                                §§goto(addr709);
                                                                                             }
                                                                                             §§goto(addr917);
                                                                                          }
                                                                                          §§goto(addr756);
                                                                                       }
                                                                                       §§goto(addr1557);
                                                                                    }
                                                                                    §§goto(addr1223);
                                                                                 }
                                                                                 §§goto(addr972);
                                                                              }
                                                                              §§goto(addr746);
                                                                           }
                                                                           §§goto(addr859);
                                                                        }
                                                                        §§goto(addr1230);
                                                                     }
                                                                     §§goto(addr644);
                                                                  }
                                                                  §§goto(addr640);
                                                               }
                                                               §§goto(addr1081);
                                                            }
                                                            §§goto(addr736);
                                                         }
                                                         §§goto(addr1123);
                                                      }
                                                      §§goto(addr586);
                                                   }
                                                   §§goto(addr699);
                                                }
                                                §§goto(addr1355);
                                             }
                                             §§goto(addr1018);
                                          }
                                          §§goto(addr800);
                                       }
                                    }
                                 }
                                 §§goto(addr523);
                              }
                              §§goto(addr512);
                           }
                        }
                        §§goto(addr523);
                     }
                     §§goto(addr108);
                  }
               }
               §§goto(addr99);
            }
            §§goto(addr90);
         }
         §§goto(addr93);
      }
      
      private function §?x§(param1:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§61§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§!X§)
         {
            _loc3_ = this.§<^§[_loc2_];
            if(_loc4_ || _loc3_)
            {
               this.§"!,§[_loc2_ * 3] = _loc3_.x;
               if(_loc5_ && _loc3_)
               {
                  continue;
               }
            }
            this.§"!,§[_loc2_ * 3 + 1] = _loc3_.y;
            if(_loc4_)
            {
               _loc2_++;
            }
         }
         if(!_loc5_)
         {
            param1.transformVectors(this.§"!,§,this.§"L§);
         }
      }
      
      override public function render(param1:§2N§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§6!4§(param1.§false§);
            if(!(_loc6_ && _loc3_))
            {
               if(this.§<y§ == 0)
               {
                  if(!(_loc6_ && param2))
                  {
                     return;
                  }
               }
               else
               {
                  addr49:
                  §§push(param2);
                  if(_loc7_ || this)
                  {
                     §§push(§§pop() * this.alpha);
                     if(_loc7_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  param2 = §§pop();
               }
            }
            §§push(§>4§);
            §§push(param2 == 1);
            if(_loc7_ || param2)
            {
               §§push(!§§pop());
            }
            §§push(§§pop().§4!+§(§§pop(),this.§;p§.mipMapping,false,this.§#E§,true));
            if(_loc7_)
            {
               §§push(§§pop());
            }
            var _loc3_:* = §§pop();
            var _loc4_:Context3D;
            if((_loc4_ = param1.context) == null)
            {
               if(_loc7_)
               {
                  return;
               }
            }
            var _loc5_:Vector.<Number> = !!this.§7R§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
            if(_loc7_ || _loc3_)
            {
               if(param1.§if§ != this.§3!H§)
               {
                  this.§^M§(0);
                  if(!_loc6_)
                  {
                     this.§3!H§ = param1.§if§;
                  }
               }
               if(!this.§]^§(_loc4_))
               {
                  if(_loc7_)
                  {
                     this.§;!'§.uploadFromVector(this.§,Y§.§-e§,0,this.§<y§ * 4);
                     this.§#f§.uploadFromVector(this.§,Y§.§#y§,0,this.§<y§ * 4);
                     if(_loc7_)
                     {
                        addr218:
                        _loc4_.setBlendFactors(this.§@s§,this.§"k§);
                        _loc4_.setProgram(§>I§.§`S§.§&!L§(_loc3_));
                        _loc4_.setTextureAt(0,this.§;p§.getBase(_loc4_));
                        _loc4_.setVertexBufferAt(0,this.§#f§,§3!!§.§"K§,Context3DVertexBufferFormat.FLOAT_3);
                        if(_loc7_ || param1)
                        {
                           _loc4_.setVertexBufferAt(1,this.§!f§,§3!!§.§#_§,Context3DVertexBufferFormat.FLOAT_2);
                           if(_loc7_ || param2)
                           {
                              _loc4_.setVertexBufferAt(2,this.§;!'§,§3!!§.§17§,Context3DVertexBufferFormat.FLOAT_4);
                              if(!(_loc6_ && param2))
                              {
                                 _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§false§,true);
                              }
                              §§goto(addr334);
                           }
                           _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
                           if(_loc7_ || param2)
                           {
                              addr317:
                              _loc4_.drawTriangles(this.§5,§,0,this.§<y§ * 2);
                              _loc4_.setVertexBufferAt(0,null);
                              addr330:
                              _loc4_.setVertexBufferAt(1,null);
                           }
                           §§goto(addr330);
                        }
                        §§goto(addr317);
                     }
                     addr334:
                     _loc4_.setVertexBufferAt(2,null);
                     return;
                  }
                  §§goto(addr317);
               }
               §§goto(addr218);
            }
            §§goto(addr317);
         }
         §§goto(addr49);
      }
      
      public function get §^l§() : Boolean
      {
         return false;
      }
      
      public function get §[J§() : int
      {
         return this.§,Y§.§`!6§ / 4;
      }
      
      public function get §<R§() : int
      {
         return this.§!X§;
      }
      
      public function get §%f§() : Number
      {
         return this.§9G§;
      }
      
      public function set §%f§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§9G§ = param1;
         }
      }
      
      public function get §4!!§() : Number
      {
         return this.§@m§;
      }
      
      public function set §4!!§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@m§ = param1;
         }
      }
      
      public function get §!U§() : Number
      {
         return this.§1!F§;
      }
      
      public function set §!U§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1!F§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§;p§;
      }
   }
}
