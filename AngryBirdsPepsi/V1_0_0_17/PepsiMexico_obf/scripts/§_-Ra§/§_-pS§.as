package §_-Ra§
{
   import flash.utils.Dictionary;
   
   public class §_-pS§ extends §_-RO§
   {
       
      
      private var §_-mM§:Dictionary;
      
      private var §_-GN§:§_-RO§;
      
      public function §_-pS§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-mM§ = new Dictionary();
            if(!(_loc1_ && _loc1_))
            {
               super();
            }
         }
      }
      
      public function §_-i9§(param1:String, param2:§_-RO§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2 == null)
            {
               if(_loc3_ || this)
               {
                  throw new Error("Trying to add a null animation");
               }
            }
            else
            {
               if(!this.§_-GN§)
               {
                  if(!_loc4_)
                  {
                     this.§_-GN§ = param2;
                     if(_loc3_ || param1)
                     {
                        addr65:
                        this.§_-mM§[param1] = param2;
                     }
                  }
               }
               §§goto(addr65);
            }
            return;
         }
         §§goto(addr65);
      }
      
      override public function addFrame(param1:§_-Vr§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§_-GN§.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : §_-Vr§
      {
         return this.§_-GN§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§_-GN§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §_-RO§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§_-mM§[param1])
            {
               if(_loc3_)
               {
                  §§goto(addr42);
               }
            }
            return this.§_-GN§;
         }
         addr42:
         return this.§_-mM§[param1];
      }
   }
}
