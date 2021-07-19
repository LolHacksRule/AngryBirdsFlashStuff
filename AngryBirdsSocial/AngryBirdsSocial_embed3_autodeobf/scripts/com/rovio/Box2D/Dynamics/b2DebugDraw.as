package com.rovio.Box2D.Dynamics
{
   import com.rovio.Box2D.Common.Math.b2Transform;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Color;
   import com.rovio.Box2D.Common.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var e_shapeBit:uint = 1;
      
      public static var e_jointBit:uint = 2;
      
      public static var e_aabbBit:uint = 4;
      
      public static var e_pairBit:uint = 8;
      
      public static var e_centerOfMassBit:uint = 16;
      
      public static var e_controllerBit:uint = 32;
       
      
      private var m_drawFlags:uint;
      
      b2internal var m_sprite:Sprite;
      
      private var m_drawScale:Number = 1.0;
      
      private var m_lineThickness:Number = 1.0;
      
      private var m_alpha:Number = 1.0;
      
      private var m_fillAlpha:Number = 1.0;
      
      private var m_xformScale:Number = 1.0;
      
      public function b2DebugDraw()
      {
         super();
         this.m_drawFlags = 0;
      }
      
      public function SetFlags(flags:uint) : void
      {
         this.m_drawFlags = flags;
      }
      
      public function GetFlags() : uint
      {
         return this.m_drawFlags;
      }
      
      public function AppendFlags(flags:uint) : void
      {
         this.m_drawFlags |= flags;
      }
      
      public function ClearFlags(flags:uint) : void
      {
         this.m_drawFlags &= ~flags;
      }
      
      public function SetSprite(sprite:Sprite) : void
      {
         this.m_sprite = sprite;
      }
      
      public function GetSprite() : Sprite
      {
         return this.m_sprite;
      }
      
      public function SetDrawScale(drawScale:Number) : void
      {
         this.m_drawScale = drawScale;
      }
      
      public function GetDrawScale() : Number
      {
         return this.m_drawScale;
      }
      
      public function SetLineThickness(lineThickness:Number) : void
      {
         this.m_lineThickness = lineThickness;
      }
      
      public function GetLineThickness() : Number
      {
         return this.m_lineThickness;
      }
      
      public function SetAlpha(alpha:Number) : void
      {
         this.m_alpha = alpha;
      }
      
      public function GetAlpha() : Number
      {
         return this.m_alpha;
      }
      
      public function SetFillAlpha(alpha:Number) : void
      {
         this.m_fillAlpha = alpha;
      }
      
      public function GetFillAlpha() : Number
      {
         return this.m_fillAlpha;
      }
      
      public function SetXFormScale(xformScale:Number) : void
      {
         this.m_xformScale = xformScale;
      }
      
      public function GetXFormScale() : Number
      {
         return this.m_xformScale;
      }
      
      public function DrawPolygon(vertices:Array, vertexCount:int, color:b2Color) : void
      {
         this.m_sprite.graphics.lineStyle(this.m_lineThickness,color.color,this.m_alpha);
         this.m_sprite.graphics.moveTo(vertices[0].x * this.m_drawScale,vertices[0].y * this.m_drawScale);
         for(var i:int = 1; i < vertexCount; i++)
         {
            this.m_sprite.graphics.lineTo(vertices[i].x * this.m_drawScale,vertices[i].y * this.m_drawScale);
         }
         this.m_sprite.graphics.lineTo(vertices[0].x * this.m_drawScale,vertices[0].y * this.m_drawScale);
      }
      
      public function DrawSolidPolygon(vertices:Vector.<b2Vec2>, vertexCount:int, color:b2Color) : void
      {
         this.m_sprite.graphics.lineStyle(this.m_lineThickness,color.color,this.m_alpha);
         this.m_sprite.graphics.moveTo(vertices[0].x * this.m_drawScale,vertices[0].y * this.m_drawScale);
         this.m_sprite.graphics.beginFill(color.color,this.m_fillAlpha);
         for(var i:int = 1; i < vertexCount; i++)
         {
            this.m_sprite.graphics.lineTo(vertices[i].x * this.m_drawScale,vertices[i].y * this.m_drawScale);
         }
         this.m_sprite.graphics.lineTo(vertices[0].x * this.m_drawScale,vertices[0].y * this.m_drawScale);
         this.m_sprite.graphics.endFill();
      }
      
      public function DrawCircle(center:b2Vec2, radius:Number, color:b2Color) : void
      {
         this.m_sprite.graphics.lineStyle(this.m_lineThickness,color.color,this.m_alpha);
         this.m_sprite.graphics.drawCircle(center.x * this.m_drawScale,center.y * this.m_drawScale,radius * this.m_drawScale);
      }
      
      public function DrawSolidCircle(center:b2Vec2, radius:Number, axis:b2Vec2, color:b2Color) : void
      {
         this.m_sprite.graphics.lineStyle(this.m_lineThickness,color.color,this.m_alpha);
         this.m_sprite.graphics.moveTo(0,0);
         this.m_sprite.graphics.beginFill(color.color,this.m_fillAlpha);
         this.m_sprite.graphics.drawCircle(center.x * this.m_drawScale,center.y * this.m_drawScale,radius * this.m_drawScale);
         this.m_sprite.graphics.endFill();
         this.m_sprite.graphics.moveTo(center.x * this.m_drawScale,center.y * this.m_drawScale);
         this.m_sprite.graphics.lineTo((center.x + axis.x * radius) * this.m_drawScale,(center.y + axis.y * radius) * this.m_drawScale);
      }
      
      public function DrawSegment(p1:b2Vec2, p2:b2Vec2, color:b2Color) : void
      {
         this.m_sprite.graphics.lineStyle(this.m_lineThickness,color.color,this.m_alpha);
         this.m_sprite.graphics.moveTo(p1.x * this.m_drawScale,p1.y * this.m_drawScale);
         this.m_sprite.graphics.lineTo(p2.x * this.m_drawScale,p2.y * this.m_drawScale);
      }
      
      public function DrawTransform(xf:b2Transform) : void
      {
         this.m_sprite.graphics.lineStyle(this.m_lineThickness,16711680,this.m_alpha);
         this.m_sprite.graphics.moveTo(xf.position.x * this.m_drawScale,xf.position.y * this.m_drawScale);
         this.m_sprite.graphics.lineTo((xf.position.x + this.m_xformScale * xf.R.col1.x) * this.m_drawScale,(xf.position.y + this.m_xformScale * xf.R.col1.y) * this.m_drawScale);
         this.m_sprite.graphics.lineStyle(this.m_lineThickness,65280,this.m_alpha);
         this.m_sprite.graphics.moveTo(xf.position.x * this.m_drawScale,xf.position.y * this.m_drawScale);
         this.m_sprite.graphics.lineTo((xf.position.x + this.m_xformScale * xf.R.col2.x) * this.m_drawScale,(xf.position.y + this.m_xformScale * xf.R.col2.y) * this.m_drawScale);
      }
   }
}
