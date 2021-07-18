package §'#&§
{
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §-"e§ extends §3!l§
   {
       
      
      public function §-"e§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override protected function isBackground(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(param1 == "MovieClip_BackgroundBespin")
            {
               if(_loc2_ || this)
               {
                  §§push(true);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr57:
                  return super.isBackground(param1);
               }
               return §§pop();
            }
         }
         §§goto(addr57);
      }
   }
}
