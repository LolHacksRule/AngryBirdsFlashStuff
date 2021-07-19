package §_-Iw§
{
   import §_-Kt§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §_-Vb§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §_-n0§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.filter = new b2FilterData();
            if(!_loc2_)
            {
               addr26:
               super();
            }
            this.shape = null;
            this.§_-Vb§ = null;
            this.friction = 0.2;
            this.restitution = 0;
            this.density = 0;
            if(!_loc2_)
            {
               §§push(this.filter);
               if(!_loc2_)
               {
                  §§push(1);
                  if(!_loc2_)
                  {
                     §§pop().§try§ = §§pop();
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(this.filter);
                        if(!(_loc2_ && this))
                        {
                           §§push(65535);
                           if(!_loc2_)
                           {
                              addr79:
                              §§pop().§_-Gi§ = §§pop();
                              §§goto(addr98);
                           }
                           §§pop().§_-oa§ = §§pop();
                           §§goto(addr98);
                        }
                        §§goto(addr96);
                     }
                     addr98:
                     if(!(_loc2_ && _loc1_))
                     {
                        addr96:
                        §§push(this.filter);
                        §§push(0);
                     }
                     this.§_-n0§ = false;
                     return;
                  }
                  §§goto(addr79);
               }
               §§goto(addr96);
            }
            §§goto(addr79);
         }
         §§goto(addr26);
      }
   }
}
