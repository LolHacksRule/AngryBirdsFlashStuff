package §5§#7
{
   import flash.display.Graphics;
   import flash.display.MovieClip;
   
   public class §%!I§ extends TutorialPopup
   {
       
      
      private var §;!p§:Boolean = false;
      
      public function §%!I§(param1:int, param2:int, param3:MovieClip, param4:String, param5:§3!c§, param6:Boolean = true)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Graphics = null;
         if(!_loc3_)
         {
            if(!this.§;!p§)
            {
               if(_loc4_)
               {
                  addr27:
                  _loc2_ = §^c§.mClip.graphics;
                  if(!(_loc3_ && this))
                  {
                     _loc2_.beginFill(0,0);
                     loop0:
                     while(true)
                     {
                        _loc2_.drawRect(0,0,§^c§.mClip.width,§^c§.mClip.height);
                        loop1:
                        while(true)
                        {
                           addr63:
                           while(true)
                           {
                              _loc2_.endFill();
                              addr66:
                              while(_loc4_)
                              {
                                 continue loop0;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     this.§;!p§ = true;
                     if(_loc4_ || _loc3_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr63);
                     }
                     §§goto(addr66);
                  }
                  addr103:
                  super.show(param1);
               }
               return;
            }
            §§goto(addr103);
         }
         §§goto(addr27);
      }
   }
}
