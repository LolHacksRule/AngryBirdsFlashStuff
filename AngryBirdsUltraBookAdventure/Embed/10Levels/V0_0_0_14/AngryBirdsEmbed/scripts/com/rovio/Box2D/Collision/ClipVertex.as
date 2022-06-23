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
      
      public function Set(param1:ClipVertex) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
