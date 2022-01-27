package §9"U§
{
   import flash.net.SharedObject;
   
   public class §;9§
   {
      
      public static const §6&§:String = "challenge";
      
      public static const §&A§:String = "gift";
      
      public static const §6!n§:String = "invite";
       
      
      private var §0!'§:SharedObject;
      
      public function §;9§()
      {
         super();
         try
         {
            this.§0!'§ = SharedObject.getLocal(§throw§.§2"T§,§throw§.§8z§);
            if(!this.§0!'§.data.quickPopupsLastOpenTime)
            {
               this.§0!'§.data.quickPopupsLastOpenTime = {};
               this.§0!'§.flush();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public function §`"x§(param1:String) : Number
      {
         var _loc2_:Number = 0;
         try
         {
            _loc2_ = Number(this.§0!'§.data.quickPopupsLastOpenTime[param1]) || Number(0);
         }
         catch(e:Error)
         {
         }
         return _loc2_;
      }
      
      public function §7"H§(param1:String) : void
      {
         try
         {
            this.§0!'§.data.quickPopupsLastOpenTime[param1] = new Date().time;
            this.§0!'§.flush();
         }
         catch(e:Error)
         {
         }
      }
   }
}
