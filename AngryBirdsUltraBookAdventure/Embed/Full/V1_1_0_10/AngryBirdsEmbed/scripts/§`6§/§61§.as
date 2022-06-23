package §`6§
{
   public class §61§
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public var scaleX:Number;
      
      public var scaleY:Number;
      
      public var rotation:Number;
      
      public var red:Number;
      
      public var green:Number;
      
      public var blue:Number;
      
      public var alpha:Number;
      
      public var currentTime:Number;
      
      public var §9t§:Number;
      
      public function §61§()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            §§push(this);
            §§push(this);
            §§push(this);
            §§push(this.currentTime = 0);
            if(!(_loc2_ && _loc2_))
            {
               var _loc1_:*;
               §§push(_loc1_ = §§pop());
            }
            §§pop().rotation = §§pop();
            §§push(_loc1_);
            if(_loc3_ || this)
            {
               §§push(_loc1_ = §§pop());
            }
            §§pop().y = §§pop();
            §§pop().x = _loc1_;
            if(!(_loc2_ && _loc2_))
            {
               §§push(this);
               §§push(this);
               §§push(this);
               §§push(this.scaleY = 1);
               if(_loc3_ || _loc1_)
               {
                  §§push(_loc1_ = §§pop());
               }
               §§pop().scaleX = §§pop();
               §§push(_loc1_);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(_loc1_ = §§pop());
               }
               §§pop().alpha = §§pop();
               §§pop().§9t§ = _loc1_;
               this.red = 1;
               if(!(_loc2_ && _loc1_))
               {
                  this.green = 1;
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr136);
               }
            }
            this.blue = 1;
         }
         addr136:
      }
   }
}
