package §1!k§
{
   public class §"U§ extends §^!B§
   {
       
      
      protected var §>d§:§?H§;
      
      public function §"U§(param1:§?H§, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super(param1.§3!-§,param2);
            while(true)
            {
               this.§>d§ = param1;
               loop1:
               while(!_loc4_)
               {
                  while(true)
                  {
                     §[m§ = param1.duration;
                     if(_loc3_ || param2)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      override public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(§#e§)
            {
               do
               {
                  super.stop();
                  do
                  {
                     this.§>d§.fireStop();
                  }
                  while(_loc2_);
                  
               }
               while(!_loc1_);
               
               addr56:
            }
            return;
         }
         §§goto(addr56);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§>d§.update(param1);
         }
      }
      
      override public function firePlay() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.firePlay();
         }
         do
         {
            this.§>d§.firePlay();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      override public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§#e§)
            {
               do
               {
                  this.§>d§.firePlay();
                  do
                  {
                     super.play();
                  }
                  while(_loc2_);
                  
               }
               while(_loc2_);
               
               addr50:
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function get §2O§() : §?H§
      {
         return this.§>d§;
      }
      
      override public function fireStop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.fireStop();
         }
         do
         {
            this.§>d§.fireStop();
         }
         while(!(_loc1_ || this));
         
      }
   }
}
