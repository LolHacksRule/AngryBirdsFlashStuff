package §4G§
{
   public class §'!m§
   {
       
      
      public var x:int;
      
      public var y:int;
      
      public var width:int;
      
      public var height:int;
      
      public var right:int;
      
      public var bottom:int;
      
      public var id:int;
      
      public function §'!m§(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            super();
            while(true)
            {
               this.x = param1;
            }
            addr101:
         }
         loop1:
         while(true)
         {
            this.y = param2;
            while(true)
            {
               this.width = param3;
               while(!_loc6_)
               {
                  this.height = param4;
                  loop4:
                  while(!(_loc6_ && this))
                  {
                     this.right = param1 + param3;
                     while(!_loc6_)
                     {
                        this.bottom = param2 + param4;
                        if(!_loc5_)
                        {
                           continue;
                        }
                        if(_loc6_)
                        {
                           continue loop4;
                        }
                        if(_loc5_)
                        {
                           break loop1;
                        }
                        §§goto(addr101);
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
   }
}
