package §!§
{
   import §=!!§.b2Shape;
   import §@!E§.b2Vec2;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §'Z§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §#"6§:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var id:b2ContactID;
      
      public function b2ContactPoint()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.position = new b2Vec2();
            while(true)
            {
               this.§'Z§ = new b2Vec2();
               addr50:
               if(_loc2_ && this)
               {
                  continue;
               }
               return;
               addr57:
            }
         }
         while(true)
         {
            this.normal = new b2Vec2();
            while(!(_loc2_ && this))
            {
               this.id = new b2ContactID();
               do
               {
                  super();
               }
               while(!(_loc1_ || this));
               
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr50);
            }
         }
         §§goto(addr57);
      }
   }
}
