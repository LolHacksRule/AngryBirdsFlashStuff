package §9!N§
{
   public class §4!h§
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
      
      public var §45§:Number;
      
      public var §3!&§:Number;
      
      public function §4!h§()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc1_)
         {
            super();
            if(!(_loc2_ && this))
            {
               §§push(this);
               §§push(this);
               §§push(this);
               §§push(this.§45§ = 0);
               if(!(_loc2_ && _loc1_))
               {
                  var _loc1_:*;
                  §§push(_loc1_ = §§pop());
               }
               §§pop().rotation = §§pop();
               §§push(_loc1_);
               if(_loc3_)
               {
                  §§push(_loc1_ = §§pop());
               }
               §§pop().y = §§pop();
               §§pop().x = _loc1_;
               if(!_loc2_)
               {
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this.scaleY = 1);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().scaleX = §§pop();
                  §§push(_loc1_);
                  if(_loc3_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().alpha = §§pop();
                  §§pop().§3!&§ = _loc1_;
                  if(!(_loc2_ && _loc3_))
                  {
                     this.red = 1;
                     loop1:
                     while(true)
                     {
                        this.green = 1;
                        addr145:
                        while(true)
                        {
                           this.blue = 1;
                           if(!_loc2_)
                           {
                              if(_loc3_ || _loc1_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                        }
                     }
                     addr122:
                     addr149:
                  }
                  return;
               }
               §§goto(addr145);
            }
            §§goto(addr122);
         }
         §§goto(addr149);
      }
   }
}
