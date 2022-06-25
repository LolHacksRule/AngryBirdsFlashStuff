package §>!Z§
{
   import §&H§.b2Vec2;
   import §3b§.b2Shape;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §<0§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §>S§:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var id:b2ContactID;
      
      public function b2ContactPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.position = new b2Vec2();
            while(true)
            {
               this.§<0§ = new b2Vec2();
               loop3:
               while(!(_loc1_ && _loc1_))
               {
                  super();
                  if(_loc1_)
                  {
                     continue;
                  }
                  addr29:
                  if(!_loc1_)
                  {
                     addr41:
                     if(!(_loc2_ || this))
                     {
                        while(true)
                        {
                           this.normal = new b2Vec2();
                           addr77:
                           while(true)
                           {
                              this.id = new b2ContactID();
                              continue loop3;
                              §§goto(addr29);
                           }
                           §§goto(addr41);
                        }
                        addr83:
                     }
                     return;
                  }
                  §§goto(addr77);
               }
            }
         }
         §§goto(addr83);
      }
   }
}
