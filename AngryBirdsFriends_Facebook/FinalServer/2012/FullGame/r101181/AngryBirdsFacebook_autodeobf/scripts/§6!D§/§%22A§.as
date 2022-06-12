package §6!D§
{
   public class §"A§
   {
       
      
      private var §+"$§:Vector.<§3!K§>;
      
      public function §"A§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
            do
            {
               this.§+"$§ = new Vector.<§3!K§>();
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public function addFrame(param1:§3!K§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(param1 == null)
            {
               if(!_loc3_)
               {
                  throw new Error("Trying to add a null frame");
               }
               while(true)
               {
                  §§goto(addr38);
               }
            }
            addr38:
            §§goto(addr50);
         }
         addr50:
         while(true)
         {
            this.§+"$§.push(param1);
            if(!(_loc3_ && _loc2_))
            {
               break;
            }
            continue loop0;
         }
      }
      
      public function getFrame(param1:int) : §3!K§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() >= this.§+"$§.length)
               {
                  while(true)
                  {
                     §§push(int(this.§+"$§.length - 1));
                     addr124:
                     while(true)
                     {
                        param1 = §§pop();
                        addr125:
                        while(true)
                        {
                        }
                     }
                  }
                  addr119:
               }
               while(true)
               {
                  §§push(param1);
                  continue loop0;
               }
            }
         }
         §§goto(addr74);
      }
      
      public function getFrameCount() : int
      {
         return this.§+"$§.length;
      }
      
      public function getSubAnimation(param1:String) : §"A§
      {
         return null;
      }
   }
}
