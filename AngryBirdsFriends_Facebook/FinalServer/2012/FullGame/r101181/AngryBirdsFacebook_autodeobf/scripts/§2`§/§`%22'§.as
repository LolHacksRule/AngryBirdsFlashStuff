package §2`§
{
   import flash.events.Event;
   
   public class §`"'§ extends Event
   {
      
      public static const §^!z§:String = "claimGift";
      
      public static const §!T§:String = "sendBackGift";
      
      public static const §+x§:String = "removeRequest";
      
      public static const §<#§:String = "playBraggedLevel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §^!z§ = "claimGift";
            loop0:
            while(true)
            {
               §!T§ = "sendBackGift";
               while(true)
               {
                  §+x§ = "removeRequest";
                  loop2:
                  while(!(_loc2_ && _loc1_))
                  {
                     while(true)
                     {
                        §<#§ = "playBraggedLevel";
                        if(_loc1_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public var data:Object;
      
      public function §`"'§(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            this.data = param2;
         }
         do
         {
            super(param1,param3,param4);
         }
         while(!_loc5_);
         
      }
      
      override public function clone() : Event
      {
         return new §`"'§(type,this.data,bubbles,cancelable);
      }
   }
}
