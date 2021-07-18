package §0"!§
{
   import §=!!§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var userData;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §7'§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.filter = new b2FilterData();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.shape = null;
                  addr164:
                  while(true)
                  {
                     this.userData = null;
                     addr149:
                     while(true)
                     {
                        this.friction = 0.2;
                        while(true)
                        {
                           this.restitution = 0;
                           continue loop0;
                           addr42:
                           if(!(_loc1_ && this))
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.filter);
            if(_loc2_ || _loc1_)
            {
               §§push(0);
               if(_loc2_)
               {
                  §§pop().§?!x§ = §§pop();
                  §§goto(addr71);
               }
               §§goto(addr95);
            }
            §§goto(addr92);
         }
         §§goto(addr56);
      }
   }
}
