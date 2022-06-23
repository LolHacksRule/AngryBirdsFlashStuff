package §5`§
{
   import flash.utils.Dictionary;
   
   public class §'g§ extends §+R§
   {
       
      
      private var §7g§:Dictionary;
      
      private var §8t§:§+R§;
      
      public function §'g§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§7g§ = new Dictionary();
            if(!_loc2_)
            {
               super();
            }
         }
      }
      
      public function §+"§(param1:String, param2:§+R§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            if(param2 == null)
            {
               if(_loc4_)
               {
                  §§goto(addr49);
               }
            }
            else
            {
               if(!this.§8t§)
               {
                  if(!_loc3_)
                  {
                     this.§8t§ = param2;
                     if(_loc4_ || this)
                     {
                     }
                  }
                  §§goto(addr75);
               }
               this.§7g§[param1] = param2;
            }
            addr75:
            return;
         }
         addr49:
         throw new Error("Trying to add a null animation");
      }
      
      override public function addFrame(param1:§%F§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8t§.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : §%F§
      {
         return this.§8t§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§8t§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §+R§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.§7g§[param1])
            {
               if(!(_loc3_ && _loc2_))
               {
                  return this.§7g§[param1];
               }
            }
         }
         return this.§8t§;
      }
   }
}
