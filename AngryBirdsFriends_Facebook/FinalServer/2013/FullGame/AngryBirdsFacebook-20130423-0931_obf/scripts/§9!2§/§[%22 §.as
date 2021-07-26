package §9!2§
{
   import flash.events.Event;
   
   public class §[" § extends Event
   {
      
      public static const §!"[§:String = "claimGift";
      
      public static const §4"&§:String = "sendBackGift";
      
      public static const §--§:String = "removeRequest";
      
      public static const §-G§:String = "playBraggedLevel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §!"[§ = "claimGift";
         }
         loop0:
         while(true)
         {
            §4"&§ = "sendBackGift";
            do
            {
               §--§ = "removeRequest";
               continue loop0;
            }
            while(_loc1_ && _loc1_);
            
            return;
         }
      }
      
      public var data:Object;
      
      public function §[" §(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.data = param2;
         }
         do
         {
            super(param1,param3,param4);
         }
         while(_loc5_);
         
      }
      
      override public function clone() : Event
      {
         return new §[" §(type,this.data,bubbles,cancelable);
      }
   }
}
