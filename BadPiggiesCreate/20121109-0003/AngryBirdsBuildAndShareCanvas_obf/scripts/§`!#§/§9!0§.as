package §`!#§
{
   public class §9!0§ extends §[!O§
   {
       
      
      protected var §7"?§:§?f§;
      
      public function §9!0§(param1:§?f§, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1.§!"$§,param2);
            do
            {
               this.§7"?§ = param1;
               do
               {
                  §!"-§ = param1.duration;
               }
               while(_loc4_);
               
            }
            while(_loc4_);
            
         }
      }
      
      override public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§ y§)
            {
               loop0:
               while(true)
               {
                  super.stop();
                  addr61:
                  while(true)
                  {
                     this.§7"?§.fireStop();
                     if(!_loc2_)
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr19);
               }
            }
            addr19:
            return;
         }
         §§goto(addr61);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7"?§.update(param1);
         }
      }
      
      override public function firePlay() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.firePlay();
            do
            {
               this.§7"?§.firePlay();
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      override public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(!§ y§)
            {
               loop0:
               while(true)
               {
                  this.§7"?§.firePlay();
                  addr71:
                  while(true)
                  {
                     super.play();
                     if(!(_loc2_ && this))
                     {
                        if(_loc1_ || _loc1_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr24);
               }
            }
            addr24:
            return;
         }
         §§goto(addr71);
      }
      
      public function get §]!2§() : §?f§
      {
         return this.§7"?§;
      }
      
      override public function fireStop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.fireStop();
            do
            {
               this.§7"?§.fireStop();
            }
            while(_loc2_ && this);
            
         }
      }
   }
}
