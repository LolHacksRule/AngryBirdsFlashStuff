package §]K§
{
   public class §;!`§
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
      
      public var §+V§:Number;
      
      public var §#F§:Number;
      
      public function §;!`§()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super();
            if(!(_loc2_ && _loc3_))
            {
               §§goto(addr33);
            }
            §§goto(addr164);
         }
         addr33:
         §§push(this);
         §§push(this);
         §§push(this);
         §§push(this.§+V§ = 0);
         if(!(_loc2_ && this))
         {
            var _loc1_:*;
            §§push(_loc1_ = §§pop());
         }
         §§pop().rotation = §§pop();
         §§push(_loc1_);
         if(_loc3_ || _loc2_)
         {
            §§push(_loc1_ = §§pop());
         }
         §§pop().y = §§pop();
         §§pop().x = _loc1_;
         if(_loc3_ || _loc2_)
         {
            §§push(this);
            §§push(this);
            §§push(this);
            §§push(this.scaleY = 1);
            if(!(_loc2_ && this))
            {
               §§push(_loc1_ = §§pop());
            }
            §§pop().scaleX = §§pop();
            §§push(_loc1_);
            if(!(_loc2_ && _loc1_))
            {
               §§push(_loc1_ = §§pop());
            }
            §§pop().alpha = §§pop();
            §§pop().§#F§ = _loc1_;
            if(!_loc2_)
            {
               this.red = 1;
               do
               {
                  this.green = 1;
                  do
                  {
                     this.blue = 1;
                  }
                  while(_loc2_ && this);
                  
               }
               while(!(_loc3_ || this));
               
               addr164:
            }
            §§goto(addr164);
         }
      }
   }
}
