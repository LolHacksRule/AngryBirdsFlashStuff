package §!#C§
{
   import §+!J§.§""A§;
   import §1"b§.§>l§;
   import §>!$§.§%l§;
   import §>!$§.§<"u§;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.geom.Matrix3D;
   import flash.geom.Rectangle;
   
   public class §0#R§
   {
       
      
      private var §?">§:Shape;
      
      private var §35§:Graphics;
      
      private var colors:Vector.<uint>;
      
      private var §^!O§:uint = 0;
      
      private var §5R§:Boolean = true;
      
      private var §4#6§:Number;
      
      private var default3DFields:Array;
      
      private var default2DFields:Array;
      
      private var §<"^§:§%l§;
      
      private var §@!§:§%l§ = null;
      
      public function §0#R§(param1:§>l§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?">§ = new Shape();
            while(true)
            {
               this.colors = Vector.<uint>([16711680,16711680,65535,255,16711935,65280]);
               while(_loc3_)
               {
                  this.default3DFields = ["x","y","z","width","height","rotationX","rotationY","rotationZ"];
                  loop2:
                  for(; !(_loc2_ && param1); if(_loc2_ && _loc3_)
                  {
                     continue;
                  },§§goto(addr75))
                  {
                     this.default2DFields = ["x","y","width","height","rotation"];
                     while(true)
                     {
                        this.§<"^§ = new §%l§(null);
                        while(!_loc2_)
                        {
                           super();
                           loop5:
                           while(!_loc2_)
                           {
                              continue loop2;
                              while(true)
                              {
                                 this.§35§ = this.§?">§.graphics;
                                 do
                                 {
                                    param1.addCallback(§""A§.§9"u§,this.§4R§);
                                 }
                                 while(_loc2_ && param1);
                                 
                                 if(!(_loc2_ && param1))
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      private function §4R§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!this.enabled)
            {
               if(_loc4_)
               {
                  return;
               }
            }
            else
            {
               this.clear();
            }
         }
         var _loc1_:§<"u§ = this.§<"^§.§"S§();
         var _loc2_:DrawInstruction = _loc1_.data;
         while(true)
         {
            if(_loc2_ == null)
            {
               if(_loc4_)
               {
                  this.§@!§ = this.§<"^§;
                  if(!(_loc3_ && _loc1_))
                  {
                     break;
                  }
               }
               §§goto(addr96);
            }
            _loc2_.draw(this.g);
            if(!(_loc4_ || _loc1_))
            {
               break;
            }
            _loc2_ = _loc1_.§]!D§();
         }
         this.§<"^§ = new §%l§(null);
         addr96:
      }
      
      public function get g() : Graphics
      {
         return this.§35§;
      }
      
      public function get shape() : Shape
      {
         return this.§?">§;
      }
      
      public function get enabled() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§5R§);
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        addr50:
                        §§pop();
                        addr51:
                        §§push(this.shape.stage == null);
                        if(_loc1_ && this)
                        {
                        }
                        §§goto(addr74);
                     }
                     §§push(!§§pop());
                  }
               }
               addr74:
               return §§pop();
            }
            §§goto(addr50);
         }
         §§goto(addr51);
      }
      
      public function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§5R§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.g.clear();
         }
         do
         {
            this.§^!O§ = 0;
         }
         while(!_loc2_);
         
      }
      
      public function §@!G§(param1:Number, param2:Number, param3:Number = 0, param4:uint = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§<"^§.append(new DrawArrowInstruction(param1,param2,param3,param4));
         }
      }
      
      public function drawPath2D(param1:Array, param2:uint, param3:Number = 0, param4:Number = 0, param5:Boolean = false) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:* = undefined;
         var _loc6_:int = 0;
         while(_loc6_ < param1.length)
         {
            _loc7_ = param1[_loc6_];
            if(!(_loc8_ && param1))
            {
               _loc6_++;
            }
         }
      }
      
      public function drawPath3D(param1:Array, param2:uint, param3:Matrix3D, param4:Boolean = false) : void
      {
      }
      
      public function §9!$§(param1:DisplayObject) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         if(_loc12_)
         {
            if(!this.enabled)
            {
               if(!(_loc11_ && this))
               {
                  §§goto(addr37);
               }
            }
            var _loc2_:Rectangle = param1.transform.pixelBounds;
            var _loc3_:* = false;
            var _loc4_:Number = this.shape.stage.stageWidth;
            var _loc5_:Number = this.shape.stage.stageHeight;
            if(!_loc11_)
            {
               if(_loc2_.x + _loc2_.width >= 0)
               {
                  if(_loc2_.x > _loc4_)
                  {
                     while(true)
                     {
                        §§push(true);
                        addr130:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr131:
                           while(true)
                           {
                           }
                        }
                        addr101:
                        if(_loc11_ && this)
                        {
                           continue;
                        }
                        if(!_loc11_)
                        {
                           addr111:
                           §§push(true);
                           if(_loc12_)
                           {
                              if(!(_loc12_ || _loc2_))
                              {
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    loop20:
                                    while(true)
                                    {
                                       addr93:
                                       while(true)
                                       {
                                          if(_loc2_.y + _loc2_.height >= 0)
                                          {
                                             if(_loc2_.y > _loc5_)
                                             {
                                                if(!_loc11_)
                                                {
                                                   if(_loc12_)
                                                   {
                                                      if(_loc12_ || param1)
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                            continue loop20;
                                                         }
                                                         §§push(true);
                                                         if(!(_loc11_ && _loc3_))
                                                         {
                                                            _loc3_ = §§pop();
                                                            addr89:
                                                            if(_loc12_)
                                                            {
                                                               if(true)
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr111);
                                                         }
                                                         §§goto(addr131);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr101);
                                                      }
                                                   }
                                                   break;
                                                   addr121:
                                                }
                                                §§goto(addr89);
                                             }
                                             break;
                                          }
                                          §§goto(addr101);
                                       }
                                       §§push(this.§4"x§());
                                       if(_loc12_)
                                       {
                                          §§push(uint(§§pop()));
                                       }
                                       var _loc6_:* = §§pop();
                                       if(!_loc11_)
                                       {
                                          if(!_loc3_)
                                          {
                                             this.drawRect(_loc2_,_loc6_);
                                             if(_loc12_ || _loc3_)
                                             {
                                                if(_loc12_)
                                                {
                                                   if(!(_loc12_ || this))
                                                   {
                                                      loop4:
                                                      while(true)
                                                      {
                                                         §§push(Number(_loc2_.y + _loc2_.height * 0.5));
                                                         loop5:
                                                         for(; !(_loc11_ && _loc2_); loop7:
                                                         for(; _loc12_ || _loc3_; if(_loc11_ && param1)
                                                         {
                                                            continue;
                                                         },_loc10_ = §§pop(),loop13:
                                                         while(!(_loc11_ && this))
                                                         {
                                                            while(true)
                                                            {
                                                               this.§@!G§(Math.max(DrawArrowInstruction.ARROW_SIZE,Math.min(_loc4_ - DrawArrowInstruction.ARROW_SIZE,_loc7_)),Math.max(DrawArrowInstruction.ARROW_SIZE,Math.min(_loc5_ - DrawArrowInstruction.ARROW_SIZE,_loc8_)),Math.atan2(_loc10_,_loc9_),_loc6_);
                                                               addr219:
                                                               while(true)
                                                               {
                                                                  if(!_loc12_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  if(!_loc11_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr293);
                                                               }
                                                            }
                                                         },while(true)
                                                         {
                                                            §§push(Number(_loc2_.x + _loc2_.width * 0.5));
                                                            break loop5;
                                                         })
                                                         {
                                                            §§push(_loc4_);
                                                            if(_loc12_)
                                                            {
                                                               §§push(0.5);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                               addr289:
                                                            }
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     addr293:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        if(!_loc11_)
                                                                        {
                                                                           if(_loc12_ || param1)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              if(_loc12_)
                                                                              {
                                                                                 §§push(0.5);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr289);
                                                                                 }
                                                                              }
                                                                              if(!(_loc12_ || _loc3_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!_loc11_)
                                                                              {
                                                                                 if(!(_loc11_ && _loc3_))
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    continue loop7;
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                               }
                                                            }
                                                         })
                                                         {
                                                            _loc8_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc7_);
                                                               continue loop5;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            _loc7_ = §§pop();
                                                            continue loop4;
                                                         }
                                                      }
                                                   }
                                                   return;
                                                }
                                                §§goto(addr311);
                                             }
                                             §§goto(addr219);
                                          }
                                          §§goto(addr314);
                                       }
                                       §§goto(addr275);
                                    }
                                 }
                                 addr140:
                              }
                              _loc3_ = §§pop();
                              §§goto(addr121);
                           }
                           §§goto(addr130);
                        }
                        while(true)
                        {
                           §§goto(addr140);
                        }
                        addr139:
                     }
                  }
                  §§goto(addr93);
               }
            }
            §§goto(addr139);
         }
         addr37:
      }
      
      private function drawRect(param1:Rectangle, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§<"^§.append(new DrawRectInstruction(param1,param2));
         }
      }
      
      public function §%c§(param1:DisplayObject) : void
      {
      }
      
      public function §]#4§(param1:DisplayObject) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§4"x§());
         if(!(_loc4_ && param1))
         {
            §§push(uint(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            if(param1.transform.matrix3D == null)
            {
               this.drawMatrix2D(param1,_loc2_);
               if(_loc3_ || param1)
               {
                  if(!_loc3_)
                  {
                     addr76:
                     this.drawMatrix3D(param1,_loc2_);
                     addr80:
                  }
                  return;
               }
               §§goto(addr80);
            }
         }
         §§goto(addr76);
      }
      
      private function §4"x§() : uint
      {
         var _loc1_:*;
         var _loc2_:* = Number((_loc1_ = this).§^!O§) + 1;
         _loc1_.§^!O§ = _loc2_;
         return this.colors[(_loc1_ = this).§^!O§ % this.colors.length];
      }
      
      private function drawMatrix2D(param1:DisplayObject, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§<"^§.append(new DrawMatrix2DInstruction(param1,this.§4"x§()));
         }
      }
      
      private function drawMatrix3D(param1:DisplayObject, param2:uint) : void
      {
         var _loc3_:Matrix3D = param1.transform.getRelativeMatrix3D(param1.root);
      }
      
      public function §=r§(param1:DisplayObject, ... rest) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(rest.length == 0)
            {
               if(!_loc3_)
               {
                  addr35:
                  if(param1.transform.matrix3D != null)
                  {
                     addr40:
                     §§push(this.default3DFields);
                     if(!_loc3_)
                     {
                        rest = §§pop();
                     }
                     §§goto(addr61);
                  }
                  else
                  {
                     §§push(this.default2DFields);
                  }
                  rest = §§pop();
                  §§goto(addr61);
               }
               §§goto(addr40);
            }
            addr61:
            return;
         }
         §§goto(addr35);
      }
      
      public function §"!2§(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && _loc3_))
         {
            if(!this.enabled)
            {
               if(_loc6_)
               {
                  return;
               }
            }
         }
         var _loc3_:uint = this.colors[this.§^!O§++ % this.colors.length];
         if(_loc6_)
         {
            this.§<"^§.append(new LineBetweenInstruction(param1,param2,_loc3_));
         }
      }
   }
}

import §!!c§.§95§;
import flash.display.Graphics;

class DrawInstruction implements §95§
{
    
   
   function DrawInstruction()
   {
      super();
   }
   
   public function draw(param1:Graphics, param2:DrawInstruction = null) : void
   {
   }
   
   public function dispose() : void
   {
   }
}

import flash.display.DisplayObject;
import flash.display.Graphics;
import flash.geom.Rectangle;

class LineBetweenInstruction extends DrawInstruction
{
    
   
   private var _o1:DisplayObject;
   
   private var _o2:DisplayObject;
   
   private var _color:uint;
   
   function LineBetweenInstruction(param1:DisplayObject, param2:DisplayObject, param3:uint)
   {
      super();
      this._color = param3;
      this._o2 = param2;
      this._o1 = param1;
   }
   
   override public function draw(param1:Graphics, param2:DrawInstruction = null) : void
   {
      var _loc3_:Rectangle = this._o1.transform.pixelBounds;
      var _loc4_:Rectangle = this._o2.transform.pixelBounds;
      param1.lineStyle(0,this._color);
      param1.moveTo(_loc3_.x + _loc3_.width * 0.5,_loc3_.y + _loc3_.height * 0.5);
      param1.lineTo(_loc4_.x + _loc4_.width * 0.5,_loc4_.y + _loc4_.height * 0.5);
   }
}

import flash.display.DisplayObject;
import flash.display.Graphics;
import flash.geom.Matrix;
import flash.geom.Point;

class DrawMatrix2DInstruction extends DrawInstruction
{
    
   
   private var _color:uint;
   
   private var _o:DisplayObject;
   
   function DrawMatrix2DInstruction(param1:DisplayObject, param2:uint)
   {
      super();
      this._o = param1;
      this._color = param2;
   }
   
   override public function draw(param1:Graphics, param2:DrawInstruction = null) : void
   {
      var _loc3_:Matrix = this._o.transform.concatenatedMatrix;
      if(_loc3_ == null)
      {
         return;
      }
      var _loc4_:Point = new Point();
      var _loc5_:Point = new Point(0,20);
      var _loc6_:Point = new Point(20,0);
      _loc4_ = _loc3_.transformPoint(_loc4_);
      _loc6_ = _loc3_.transformPoint(_loc6_);
      _loc5_ = _loc3_.transformPoint(_loc5_);
      param1.moveTo(_loc4_.x,_loc4_.y);
      param1.lineStyle(1,16711680);
      param1.lineTo(_loc6_.x,_loc6_.y);
      param1.moveTo(_loc4_.x,_loc4_.y);
      param1.lineStyle(1,65280);
      param1.lineTo(_loc5_.x,_loc5_.y);
   }
}

import flash.display.Graphics;
import flash.geom.Rectangle;

class DrawRectInstruction extends DrawInstruction
{
    
   
   private var _rect:Rectangle;
   
   private var _color:uint;
   
   function DrawRectInstruction(param1:Rectangle, param2:uint)
   {
      super();
      this._color = param2;
      this._rect = param1;
   }
   
   override public function draw(param1:Graphics, param2:DrawInstruction = null) : void
   {
      param1.lineStyle(0,this._color);
      param1.drawRect(this._rect.x,this._rect.y,this._rect.width,this._rect.height);
   }
}

import flash.display.Graphics;

class DrawArrowInstruction extends DrawInstruction
{
   
   public static const ARROW_SIZE:int = 8;
    
   
   private var _x:Number;
   
   private var _y:Number;
   
   private var _angle:Number;
   
   private var _color:uint;
   
   function DrawArrowInstruction(param1:Number, param2:Number, param3:Number, param4:uint)
   {
      super();
      this._color = param4;
      this._angle = param3;
      this._y = param2;
      this._x = param1;
   }
   
   override public function draw(param1:Graphics, param2:DrawInstruction = null) : void
   {
      param1.lineStyle(1,this._color);
      var _loc3_:Number = 0.785;
      param1.moveTo(this._x + Math.cos(this._angle - _loc3_) * -ARROW_SIZE,this._y + Math.sin(this._angle - _loc3_) * -ARROW_SIZE);
      param1.lineTo(this._x,this._y);
      param1.lineTo(this._x + Math.cos(this._angle + _loc3_) * -ARROW_SIZE,this._y + Math.sin(this._angle + _loc3_) * -ARROW_SIZE);
   }
}
