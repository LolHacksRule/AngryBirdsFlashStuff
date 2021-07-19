package §8[§
{
   import §+#$§.*;
   import §3"5§.*;
   import §5"i§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var §9"`§:Vector.<b2ContactConstraintPoint>;
      
      public var §6!I§:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §&!M§:b2Mat22;
      
      public var K:b2Mat22;
      
      public var §9"P§:b2Body;
      
      public var §continue§:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var §6!c§:int;
      
      public var §#j§:b2Manifold;
      
      public function b2ContactConstraint()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6!I§ = new b2Vec2();
            while(true)
            {
               this.localPoint = new b2Vec2();
            }
            addr100:
         }
         while(true)
         {
            this.normal = new b2Vec2();
            loop2:
            while(true)
            {
               this.§&!M§ = new b2Mat22();
               addr81:
               while(!_loc2_)
               {
                  this.K = new b2Mat22();
                  continue loop2;
               }
               §§goto(addr100);
            }
            if(!_loc3_)
            {
               continue;
            }
            §§goto(addr40);
         }
      }
   }
}
