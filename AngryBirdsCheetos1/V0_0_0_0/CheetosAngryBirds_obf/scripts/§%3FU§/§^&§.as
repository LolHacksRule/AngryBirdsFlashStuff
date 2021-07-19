package §?U§
{
   public class §^&§
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
      
      public var §>!Y§:Number;
      
      public var §'"§:Number;
      
      public function §^&§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            if(_loc2_ || _loc1_)
            {
               addr27:
               §§push(this);
               §§push(this);
               §§push(this);
               §§push(this.§>!Y§ = 0);
               if(_loc2_)
               {
                  var _loc1_:*;
                  §§push(_loc1_ = §§pop());
               }
               §§pop().rotation = §§pop();
               §§push(_loc1_);
               if(_loc2_)
               {
                  §§push(_loc1_ = §§pop());
               }
               §§pop().y = §§pop();
               §§pop().x = _loc1_;
               if(!_loc3_)
               {
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this.scaleY = 1);
                  if(!_loc3_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().scaleX = §§pop();
                  §§push(_loc1_);
                  if(_loc2_ || this)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().alpha = §§pop();
                  §§pop().§'"§ = _loc1_;
                  if(!_loc3_)
                  {
                     this.red = 1;
                     do
                     {
                        this.green = 1;
                        do
                        {
                           this.blue = 1;
                        }
                        while(!(_loc2_ || this));
                        
                     }
                     while(!_loc2_);
                     
                     addr96:
                     addr133:
                  }
                  return;
               }
               §§goto(addr96);
            }
            §§goto(addr133);
         }
         §§goto(addr27);
      }
   }
}
