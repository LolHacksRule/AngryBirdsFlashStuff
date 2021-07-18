package §0!]§
{
   import §-#a§.§4!Y§;
   import §4#!§.§ t§;
   
   public class §9#9§ extends §%!#§
   {
       
      
      protected var §8#N§:Function;
      
      public function §9#9§(param1:Function)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            do
            {
               this.§8#N§ = param1;
            }
            while(_loc2_);
            
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.dispose();
            do
            {
               this.§8#N§ = null;
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function §7"c§(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§4!Y§.§!!]§);
         if(!(_loc4_ && this))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:§4!Y§ = new §4!Y§(_loc2_,param1);
         if(!(_loc4_ && _loc2_))
         {
            §5M§.addEventListener(§ t§.§4o§,this.onTransitionMiddle);
            while(true)
            {
               §5M§.setTransition(_loc3_,true,true);
               §§goto(addr82);
            }
         }
         addr82:
         while(true)
         {
            §5M§.showTransition(_loc2_,false);
            if(_loc5_)
            {
               if(!_loc4_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override protected function onTransitionMiddle(param1:§ t§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §5M§.removeEventListener(§ t§.§4o§,this.onTransitionMiddle);
         }
         do
         {
            this.§8#N§(true);
         }
         while(_loc2_);
         
      }
   }
}
