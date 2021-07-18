package §2"§
{
   import flash.events.Event;
   
   public class §%r§ extends Event
   {
      
      public static const §4#U§:String = "claimGift";
      
      public static const §8"L§:String = "claimInviteGift";
      
      public static const §>#N§:String = "sendBackGift";
      
      public static const §]x§:String = "removeRequest";
      
      public static const §+!j§:String = "playBraggedLevel";
      
      public static const §'""§:String = "sendEnergy";
      
      public static const §1"l§:String = "playTournament";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §4#U§ = "claimGift";
         }
         while(true)
         {
            §8"L§ = "claimInviteGift";
            loop1:
            while(true)
            {
               §>#N§ = "sendBackGift";
               while(true)
               {
                  §]x§ = "removeRequest";
                  continue loop1;
                  addr31:
                  if(_loc1_ || _loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public var data:Object;
      
      public function §%r§(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            this.data = param2;
            do
            {
               super(param1,param3,param4);
            }
            while(!_loc6_);
            
         }
      }
      
      override public function clone() : Event
      {
         return new §%r§(type,this.data,bubbles,cancelable);
      }
   }
}
