package §#e§
{
   import flash.utils.Dictionary;
   
   public class §8o§ extends §4^§
   {
       
      
      private var §<!6§:Dictionary;
      
      private var §?f§:§4^§;
      
      public function §8o§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§<!6§ = new Dictionary();
         }
         do
         {
            super();
         }
         while(!(_loc2_ || this));
         
      }
      
      public function §+Y§(param1:String, param2:§4^§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            if(param2 == null)
            {
               if(!_loc3_)
               {
                  §§goto(addr80);
               }
               else
               {
                  while(true)
                  {
                  }
                  addr84:
               }
            }
            while(true)
            {
               if(!this.§?f§)
               {
                  if(!_loc3_)
                  {
                     this.§?f§ = param2;
                  }
                  loop2:
                  while(!_loc3_)
                  {
                     while(true)
                     {
                        this.§<!6§[param1] = param2;
                        if(!(_loc3_ && param2))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue;
               }
               §§goto(addr39);
            }
         }
         addr80:
         throw new Error("Trying to add a null animation");
      }
      
      override public function addFrame(param1:§`!9§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§?f§.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : §`!9§
      {
         return this.§?f§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§?f§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §4^§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§<!6§[param1])
            {
               if(!_loc2_)
               {
                  return this.§<!6§[param1];
               }
            }
         }
         return this.§?f§;
      }
   }
}
