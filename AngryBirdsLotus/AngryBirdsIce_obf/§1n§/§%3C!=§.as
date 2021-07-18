package §1n§
{
   import flash.utils.Dictionary;
   
   public class §<!=§ extends §?!C§
   {
       
      
      private var §6G§:Dictionary;
      
      private var §8y§:§?!C§;
      
      public function §<!=§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§6G§ = new Dictionary();
         }
         do
         {
            super();
         }
         while(_loc2_);
         
      }
      
      public function §#!%§(param1:String, param2:§?!C§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(param2 != null)
            {
               loop0:
               while(!this.§8y§)
               {
                  if(!_loc4_)
                  {
                     if(_loc4_)
                     {
                        continue;
                     }
                     this.§8y§ = param2;
                  }
                  loop1:
                  for(; _loc3_ || param2; break loop0)
                  {
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  throw new Error("Trying to add a null animation");
               }
               while(true)
               {
                  this.§6G§[param1] = param2;
                  if(!(_loc4_ && _loc3_))
                  {
                     break;
                  }
                  §§goto(addr73);
               }
               return;
            }
            §§goto(addr84);
         }
         §§goto(addr80);
      }
      
      override public function addFrame(param1:§1D§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§8y§.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : §1D§
      {
         return this.§8y§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§8y§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §?!C§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§6G§[param1])
            {
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr41);
               }
            }
            return this.§8y§;
         }
         addr41:
         return this.§6G§[param1];
      }
   }
}
