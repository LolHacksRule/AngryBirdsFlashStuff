package §-!0§
{
   import flash.utils.Dictionary;
   
   public class §'x§ extends §4b§
   {
       
      
      private var §8a§:Dictionary;
      
      private var §4;§:§4b§;
      
      public function §'x§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§8a§ = new Dictionary();
            if(_loc2_)
            {
               addr25:
               super();
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function §'$§(param1:String, param2:§4b§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            if(param2 == null)
            {
               if(_loc3_ || param1)
               {
                  throw new Error("Trying to add a null animation");
               }
            }
            else
            {
               addr59:
               if(!this.§4;§)
               {
                  if(_loc3_ || _loc3_)
                  {
                     this.§4;§ = param2;
                     if(_loc4_)
                     {
                     }
                     §§goto(addr79);
                  }
               }
               this.§8a§[param1] = param2;
            }
            addr79:
            return;
         }
         §§goto(addr59);
      }
      
      override public function addFrame(param1:§9X§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4;§.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : §9X§
      {
         return this.§4;§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§4;§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §4b§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§8a§[param1])
            {
               if(!_loc2_)
               {
                  §§goto(addr41);
               }
            }
            return this.§4;§;
         }
         addr41:
         return this.§8a§[param1];
      }
   }
}
