package §=U§
{
   import flash.utils.Dictionary;
   
   public class §^k§ extends §;P§
   {
       
      
      private var §9H§:Dictionary;
      
      private var §<!E§:§;P§;
      
      public function §^k§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§9H§ = new Dictionary();
            if(_loc1_ || _loc2_)
            {
               addr44:
               super();
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §'r§(param1:String, param2:§;P§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(param2 == null)
            {
               if(_loc4_)
               {
                  throw new Error("Trying to add a null animation");
               }
            }
            if(!this.§<!E§)
            {
               if(!(_loc3_ && param2))
               {
                  this.§<!E§ = param2;
                  if(!_loc3_)
                  {
                     addr70:
                     this.§9H§[param1] = param2;
                  }
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      override public function addFrame(param1:§>?§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<!E§.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : §>?§
      {
         return this.§<!E§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§<!E§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §;P§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§9H§[param1])
            {
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr46);
               }
            }
            return this.§<!E§;
         }
         addr46:
         return this.§9H§[param1];
      }
   }
}
