package com.rovio.Box2D.Collision
{
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class ClipVertex
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function ClipVertex()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(other:ClipVertex) : void
      {
         this.v.SetV(other.v);
         this.id.Set(other.id);
      }
   }
}
