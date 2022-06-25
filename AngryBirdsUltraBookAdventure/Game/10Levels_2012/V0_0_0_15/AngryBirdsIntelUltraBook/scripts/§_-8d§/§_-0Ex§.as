package §_-8d§
{
   import flash.utils.Dictionary;
   
   public class §_-0Ex§ extends §_-J§
   {
       
      
      private var §_-0L§:Dictionary;
      
      private var §_-7j§:§_-J§;
      
      public function §_-0Ex§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-0L§ = new Dictionary();
         }
         do
         {
            super();
         }
         while(_loc1_);
         
      }
      
      public function §_-06j§(param1:String, param2:§_-J§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(param2 != null)
            {
               loop0:
               while(!this.§_-7j§)
               {
                  if(_loc3_)
                  {
                     if(_loc4_ && param1)
                     {
                        continue;
                     }
                     if(_loc4_ && param2)
                     {
                        §§goto(addr84);
                     }
                     this.§_-7j§ = param2;
                  }
                  while(true)
                  {
                     break loop0;
                  }
                  return;
               }
               while(true)
               {
                  this.§_-0L§[param1] = param2;
                  if(_loc4_)
                  {
                     continue;
                  }
                  §§goto(addr46);
               }
            }
         }
         addr84:
         throw new Error("Trying to add a null animation");
      }
      
      override public function addFrame(param1:§_-vz§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§_-7j§.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : §_-vz§
      {
         return this.§_-7j§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§_-7j§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §_-J§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§_-0L§[param1])
            {
               if(_loc2_ || param1)
               {
                  §§goto(addr45);
               }
            }
            return this.§_-7j§;
         }
         addr45:
         return this.§_-0L§[param1];
      }
   }
}
