package §,!7§
{
   public class Animation
   {
       
      
      private var §>^§:Vector.<§ H§>;
      
      public function Animation()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
         do
         {
            this.§>^§ = new Vector.<§ H§>();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function addFrame(param1:§ H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(param1 == null)
            {
               if(_loc2_)
               {
                  throw new Error("Trying to add a null frame");
               }
               while(true)
               {
               }
               addr56:
            }
            while(true)
            {
               this.§>^§.push(param1);
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr56);
            }
         }
      }
      
      public function getFrame(param1:int) : § H§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() >= this.§>^§.length)
               {
                  addr119:
                  while(true)
                  {
                     §§push(int(this.§>^§.length - 1));
                     addr125:
                     while(true)
                     {
                        param1 = §§pop();
                        addr126:
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
                  addr78:
                  while(!_loc2_)
                  {
                     continue loop0;
                  }
                  §§goto(addr125);
               }
            }
         }
         §§goto(addr119);
      }
      
      public function getFrameCount() : int
      {
         return this.§>^§.length;
      }
      
      public function getSubAnimation(param1:String) : Animation
      {
         return null;
      }
   }
}
