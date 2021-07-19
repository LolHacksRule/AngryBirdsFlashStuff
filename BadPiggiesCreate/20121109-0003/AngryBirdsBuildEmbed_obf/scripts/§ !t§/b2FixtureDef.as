package § !t§
{
   import §#b§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §!L§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §]w§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.filter = new b2FilterData();
            super();
            this.shape = null;
            this.§!L§ = null;
         }
         this.friction = 0.2;
         if(!(_loc2_ && _loc2_))
         {
            this.restitution = 0;
         }
         this.density = 0;
         if(_loc1_)
         {
            §§push(this.filter);
            if(!(_loc2_ && _loc2_))
            {
               §§push(1);
               if(!_loc2_)
               {
                  §§pop().§]!J§ = §§pop();
                  §§push(this.filter);
                  if(_loc1_)
                  {
                     addr90:
                     §§push(65535);
                     if(!_loc2_)
                     {
                        §§goto(addr93);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr103);
               }
               addr93:
               §§pop().§#$§ = §§pop();
               if(_loc1_ || _loc1_)
               {
                  addr104:
                  this.filter.§%x§ = 0;
                  this.§]w§ = false;
                  addr103:
               }
               return;
            }
            §§goto(addr90);
         }
         §§goto(addr104);
      }
   }
}
