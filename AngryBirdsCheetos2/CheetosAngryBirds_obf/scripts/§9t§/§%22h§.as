package §9t§
{
   public class §"h§
   {
       
      
      private var § ;§:Vector.<§35§>;
      
      public function §"h§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            do
            {
               this.§ ;§ = new Vector.<§35§>();
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public function addFrame(param1:§35§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 != null)
            {
               do
               {
                  this.§ ;§.push(param1);
               }
               while(!(_loc2_ || _loc2_));
               
               if(!_loc3_)
               {
                  return;
                  addr57:
               }
            }
            throw new Error("Trying to add a null frame");
         }
         §§goto(addr57);
      }
      
      public function getFrame(param1:int) : §35§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() >= this.§ ;§.length)
               {
                  while(true)
                  {
                     §§push(int(this.§ ;§.length - 1));
                     addr109:
                     while(true)
                     {
                        param1 = §§pop();
                        addr110:
                        while(true)
                        {
                        }
                     }
                     addr64:
                     if(!(_loc3_ && _loc3_))
                     {
                        addr19:
                        return this.§ ;§[param1];
                        addr71:
                     }
                  }
               }
               while(true)
               {
                  §§push(param1);
                  continue loop0;
                  §§goto(addr110);
               }
            }
         }
         §§goto(addr71);
      }
      
      public function getFrameCount() : int
      {
         return this.§ ;§.length;
      }
      
      public function getSubAnimation(param1:String) : §"h§
      {
         return null;
      }
   }
}
