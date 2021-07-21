package §;!,§
{
   public class §3!u§ extends AbstractTween
   {
       
      
      protected var §]d§:§#>§;
      
      public function §3!u§(param1:§#>§, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super(param1.§-!4§,param2);
            if(_loc3_)
            {
               §§goto(addr40);
            }
            §§goto(addr45);
         }
         addr40:
         this.§]d§ = param1;
         if(_loc3_)
         {
            addr45:
            §1J§ = param1.duration;
         }
      }
      
      override public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§5N§)
            {
               if(!_loc1_)
               {
                  addr33:
                  super.stop();
                  if(_loc1_ && _loc1_)
                  {
                  }
                  §§goto(addr45);
               }
               this.§]d§.fireStop();
            }
            addr45:
            return;
         }
         §§goto(addr33);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§]d§.update(param1);
         }
      }
      
      override public function firePlay() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.firePlay();
            if(_loc2_ || _loc1_)
            {
               addr28:
               this.§]d§.firePlay();
            }
            return;
         }
         §§goto(addr28);
      }
      
      override public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§5N§)
            {
               if(!_loc2_)
               {
                  addr22:
                  this.§]d§.firePlay();
                  if(_loc1_)
                  {
                     super.play();
                  }
               }
            }
            return;
         }
         §§goto(addr22);
      }
      
      public function get §-C§() : §#>§
      {
         return this.§]d§;
      }
      
      override public function fireStop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.fireStop();
            if(!(_loc1_ && _loc1_))
            {
               addr28:
               this.§]d§.fireStop();
            }
            return;
         }
         §§goto(addr28);
      }
   }
}
