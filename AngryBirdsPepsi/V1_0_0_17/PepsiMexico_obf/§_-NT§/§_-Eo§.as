package §_-NT§
{
   public class §_-Eo§
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public var scale:Number;
      
      public var rotation:Number;
      
      public var color:uint;
      
      public var alpha:Number;
      
      public var §_-mm§:Number;
      
      public var §_-UL§:Number;
      
      public function §_-Eo§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            if(!(_loc3_ && _loc1_))
            {
               §§push(this);
               §§push(this);
               §§push(this);
               §§push(this.§_-mm§ = 0);
               if(_loc2_)
               {
                  var _loc1_:*;
                  §§push(_loc1_ = §§pop());
               }
               §§pop().rotation = §§pop();
               §§push(_loc1_);
               if(!(_loc3_ && this))
               {
                  §§push(_loc1_ = §§pop());
               }
               §§pop().y = §§pop();
               §§pop().x = _loc1_;
               if(_loc2_)
               {
                  §§goto(addr63);
               }
               §§goto(addr94);
            }
         }
         addr63:
         §§push(this);
         §§push(this);
         §§push(this.scale = 1);
         if(_loc2_ || _loc3_)
         {
            §§push(_loc1_ = §§pop());
         }
         §§pop().alpha = §§pop();
         §§pop().§_-UL§ = _loc1_;
         if(_loc2_)
         {
            addr94:
            this.color = 16777215;
         }
      }
   }
}
