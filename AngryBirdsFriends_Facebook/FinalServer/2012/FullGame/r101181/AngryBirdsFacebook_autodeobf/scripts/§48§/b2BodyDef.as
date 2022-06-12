package §48§
{
   import §#]§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §5"0§:b2Vec2;
      
      public var §!!a§:Number;
      
      public var §,!;§:Number;
      
      public var §'!k§:Number;
      
      public var §'"@§:Boolean;
      
      public var §<_§:Boolean;
      
      public var §1?§:Boolean;
      
      public var §=-§:Boolean;
      
      public var §'a§:Boolean;
      
      public var §6"&§;
      
      public var §-0§:Number;
      
      public function b2BodyDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.position = new b2Vec2();
            loop0:
            while(true)
            {
               this.§5"0§ = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  addr203:
                  while(true)
                  {
                     this.§6"&§ = null;
                     while(true)
                     {
                        this.position.Set(0,0);
                        while(_loc1_ || _loc2_)
                        {
                           this.angle = 0;
                           while(true)
                           {
                              this.§5"0§.Set(0,0);
                              continue loop1;
                           }
                           if(!(_loc2_ && _loc1_))
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr139);
      }
   }
}
