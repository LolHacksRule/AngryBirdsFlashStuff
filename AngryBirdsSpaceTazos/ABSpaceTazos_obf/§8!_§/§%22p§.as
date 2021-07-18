package §8!_§
{
   import §%!r§.§3!'§;
   import §1%§.§@!t§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §"p§ extends §@!t§
   {
       
      
      public function §"p§(param1:§3!'§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super.setViewSize(param1,param2);
            if(!(_loc4_ && _loc3_))
            {
               loop0:
               for(; §8!r§; while(true)
               {
                  if(true)
                  {
                     break loop0;
                  }
                  continue loop0;
               })
               {
                  if(!(_loc4_ && param2))
                  {
                     §8!r§.x = 0;
                  }
                  while(true)
                  {
                     §8!r§.y = 0;
                     if(_loc4_ && param1)
                     {
                        break;
                     }
                     if(!(_loc4_ && param2))
                     {
                        continue loop0;
                     }
                  }
               }
               §8!r§.scaleX = §8!r§.scaleY = 1;
            }
            return;
         }
         §§goto(addr53);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super.setLoadingScreen(param1);
            do
            {
               this.setLoadingPercentage(0);
            }
            while(_loc3_);
            
         }
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§8!r§.getChildByName("mcLoadBar") as MovieClip)["mcMask"].scaleX = param1;
         }
      }
   }
}
