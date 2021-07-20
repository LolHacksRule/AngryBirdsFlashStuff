package §_-Iw§
{
   import §_-Ja§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §_-MI§:b2Vec2;
      
      public var §_-P3§:Number;
      
      public var §_-pQ§:Number;
      
      public var §_-K5§:Number;
      
      public var §_-J4§:Boolean;
      
      public var §_-MK§:Boolean;
      
      public var §_-W2§:Boolean;
      
      public var §_-eK§:Boolean;
      
      public var §_-TG§:Boolean;
      
      public var §_-Vb§;
      
      public var §_-S0§:Number;
      
      public function b2BodyDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.position = new b2Vec2();
         if(_loc1_ || _loc1_)
         {
            this.§_-MI§ = new b2Vec2();
            if(_loc1_ || _loc2_)
            {
               §§goto(addr35);
            }
            §§goto(addr47);
         }
         addr35:
         super();
         this.§_-Vb§ = null;
         if(!(_loc2_ && _loc1_))
         {
            addr47:
            this.position.Set(0,0);
            if(_loc1_ || _loc1_)
            {
               this.angle = 0;
               this.§_-MI§.Set(0,0);
               if(!(_loc2_ && _loc1_))
               {
                  this.§_-P3§ = 0;
                  if(!(_loc2_ && _loc2_))
                  {
                     this.§_-pQ§ = 0;
                     this.§_-K5§ = 0;
                     if(_loc1_ || _loc1_)
                     {
                        §§goto(addr104);
                     }
                  }
               }
            }
            §§goto(addr112);
         }
         addr104:
         this.§_-J4§ = true;
         if(!_loc2_)
         {
            this.§_-MK§ = true;
            addr112:
            this.§_-W2§ = false;
            this.§_-eK§ = false;
            this.type = b2Body.b2_staticBody;
            this.§_-TG§ = true;
            if(!(_loc2_ && _loc1_))
            {
               this.§_-S0§ = 1;
            }
         }
      }
   }
}
