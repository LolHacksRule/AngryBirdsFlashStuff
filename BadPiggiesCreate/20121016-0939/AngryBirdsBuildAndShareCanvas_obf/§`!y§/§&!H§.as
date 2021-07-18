package §`!Y§
{
   import flash.events.Event;
   
   public class §&!H§ extends Event
   {
      
      public static const §5Y§:String = "update";
      
      public static const §^r§:String = "stop";
      
      public static const COMPLETE:String = "complete";
      
      public static const PLAY:String = "play";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            PLAY = "play";
            loop0:
            while(true)
            {
               §^r§ = "stop";
               while(true)
               {
                  §5Y§ = "update";
                  loop2:
                  while(_loc1_ || §&!H§)
                  {
                     if(_loc1_)
                     {
                        while(true)
                        {
                           COMPLETE = "complete";
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §&!H§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            super(param1,param2,param3);
         }
      }
   }
}
