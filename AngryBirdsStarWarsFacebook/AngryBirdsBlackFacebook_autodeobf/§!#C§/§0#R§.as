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
         this.§?">§ = new Shape();
         this.colors = Vector.<uint>([16711680,16711680,65535,255,16711935,65280]);
         this.default3DFields = ["x","y","z","width","height","rotationX","rotationY","rotationZ"];
         this.default2DFields = ["x","y","width","height","rotation"];
         this.§<"^§ = new §%l§(null);
         super();
         this.§35§ = this.§?">§.graphics;
         param1.addCallback(§""A§.§9"u§,this.§4R§);
      }
      
      private function §4R§() : void
      {
         if(!this.enabled)
         {
            return;
         }
         this.clear();
         var _loc1_:§<"u§ = this.§<"^§.§"S§();
         var _loc2_:DrawInstruction = _loc1_.data;
         while(_loc2_ != null)
         {
            _loc2_.draw(this.g);
            _loc2_ = _loc1_.§]!D§();
         }
         this.§@!§ = this.§<"^§;
         this.§<"^§ = new §%l§(null);
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
         return this.§5R§ && this.shape.stage != null;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§5R§ = param1;
      }
      
      public function clear() : void
      {
         this.g.clear();
         this.§^!O§ = 0;
      }
      
      public function §@!G§(param1:Number, param2:Number, param3:Number = 0, param4:uint = 0) : void
      {
         this.§<"^§.append(new DrawArrowInstruction(param1,param2,param3,param4));
      }
      
      public function drawPath2D(param1:Array, param2:uint, param3:Number = 0, param4:Number = 0, param5:Boolean = false) : void
      {
         var _loc7_:* = undefined;
         var _loc6_:int = 0;
         while(_loc6_ < param1.length)
         {
            _loc7_ = param1[_loc6_];
            _loc6_++;
         }
      }
      
      public function drawPath3D(param1:Array, param2:uint, param3:Matrix3D, param4:Boolean = false) : void
      {
      }
      
      public function §9!$§(param1:DisplayObject) : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         if(!this.enabled)
         {
            return;
         }
         var _loc2_:Rectangle = param1.transform.pixelBounds;
         var _loc3_:Boolean = false;
         var _loc4_:Number = this.shape.stage.stageWidth;
         var _loc5_:Number = this.shape.stage.stageHeight;
         if(_loc2_.x + _loc2_.width < 0)
         {
            _loc3_ = true;
         }
         else if(_loc2_.x > _loc4_)
         {
            _loc3_ = true;
         }
         if(_loc2_.y + _loc2_.height < 0)
         {
            _loc3_ = true;
         }
         else if(_loc2_.y > _loc5_)
         {
            _loc3_ = true;
         }
         var _loc6_:uint = this.§4"x§();
         if(_loc3_)
         {
            _loc7_ = _loc2_.x + _loc2_.width * 0.5;
            _loc8_ = _loc2_.y + _loc2_.height * 0.5;
            _loc9_ = _loc7_ - _loc4_ * 0.5;
            _loc10_ = _loc8_ - _loc5_ * 0.5;
            this.§@!G§(Math.max(DrawArrowInstruction.ARROW_SIZE,Math.min(_loc4_ - DrawArrowInstruction.ARROW_SIZE,_loc7_)),Math.max(DrawArrowInstruction.ARROW_SIZE,Math.min(_loc5_ - DrawArrowInstruction.ARROW_SIZE,_loc8_)),Math.atan2(_loc10_,_loc9_),_loc6_);
         }
         else
         {
            this.drawRect(_loc2_,_loc6_);
         }
      }
      
      private function drawRect(param1:Rectangle, param2:uint) : void
      {
         this.§<"^§.append(new DrawRectInstruction(param1,param2));
      }
      
      public function §%c§(param1:DisplayObject) : void
      {
      }
      
      public function §]#4§(param1:DisplayObject) : void
      {
         var _loc2_:uint = this.§4"x§();
         if(param1.transform.matrix3D != null)
         {
            this.drawMatrix3D(param1,_loc2_);
         }
         else
         {
            this.drawMatrix2D(param1,_loc2_);
         }
      }
      
      private function §4"x§() : uint
      {
         return this.colors[this.§^!O§++ % this.colors.length];
      }
      
      private function drawMatrix2D(param1:DisplayObject, param2:uint) : void
      {
         this.§<"^§.append(new DrawMatrix2DInstruction(param1,this.§4"x§()));
      }
      
      private function drawMatrix3D(param1:DisplayObject, param2:uint) : void
      {
         var _loc3_:Matrix3D = param1.transform.getRelativeMatrix3D(param1.root);
      }
      
      public function §=r§(param1:DisplayObject, ... rest) : void
      {
         if(rest.length == 0)
         {
            if(param1.transform.matrix3D != null)
            {
               rest = this.default3DFields;
            }
            else
            {
               rest = this.default2DFields;
            }
         }
      }
      
      public function §"!2§(param1:DisplayObject, param2:DisplayObject) : void
      {
         if(!this.enabled)
         {
            return;
         }
         var _loc3_:uint = this.colors[this.§^!O§++ % this.colors.length];
         this.§<"^§.append(new LineBetweenInstruction(param1,param2,_loc3_));
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
      param1.moveTo(this._x + Math.cos(this._angle - 0.785) * -ARROW_SIZE,this._y + Math.sin(this._angle - 0.785) * -ARROW_SIZE);
      param1.lineTo(this._x,this._y);
      param1.lineTo(this._x + Math.cos(this._angle + 0.785) * -ARROW_SIZE,this._y + Math.sin(this._angle + 0.785) * -ARROW_SIZE);
   }
}
