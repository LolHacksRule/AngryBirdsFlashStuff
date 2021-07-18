package §<T§
{
   public class §4!N§
   {
       
      
      private var §^"7§:Vector.<§^"5§>;
      
      public function §4!N§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
         do
         {
            this.§^"7§ = new Vector.<§^"5§>();
         }
         while(_loc1_);
         
      }
      
      public function addFrame(param1:§^"5§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1 != null)
            {
               loop0:
               while(true)
               {
                  this.§^"7§.push(param1);
                  if(_loc3_ || this)
                  {
                     break;
                  }
                  addr71:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(_loc3_ || this)
               {
                  return;
               }
            }
            throw new Error("Trying to add a null frame");
         }
         §§goto(addr71);
      }
      
      public function getFrame(param1:int) : §^"5§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() >= this.§^"7§.length)
               {
                  if(!_loc3_)
                  {
                     §§push(int(this.§^"7§.length - 1));
                     while(true)
                     {
                        param1 = §§pop();
                     }
                     addr119:
                  }
                  while(true)
                  {
                  }
                  addr120:
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
         return this.§^"7§.length;
      }
      
      public function getSubAnimation(param1:String) : §4!N§
      {
         return null;
      }
   }
}
