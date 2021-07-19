package §,"N§
{
   import flash.net.SharedObject;
   
   public class §8"3§
   {
      
      public static const §@"U§:String = "challenge";
      
      public static const §`!v§:String = "gift";
      
      public static const §9#V§:String = "invite";
       
      
      private var §`!m§:SharedObject;
      
      public function §8"3§()
      {
         super();
         try
         {
            this.§`!m§ = SharedObject.getLocal(§@!m§.§-t§,§@!m§.§5"b§);
            if(!this.§`!m§.data.quickPopupsLastOpenTime)
            {
               this.§`!m§.data.quickPopupsLastOpenTime = {};
               this.§`!m§.flush();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public function §5">§(param1:String) : Number
      {
         var _loc2_:Number = 0;
         try
         {
            _loc2_ = Number(this.§`!m§.data.quickPopupsLastOpenTime[param1]) || Number(0);
         }
         catch(e:Error)
         {
         }
         return _loc2_;
      }
      
      public function §+#U§(param1:String) : void
      {
         try
         {
            this.§`!m§.data.quickPopupsLastOpenTime[param1] = new Date().time;
            this.§`!m§.flush();
         }
         catch(e:Error)
         {
         }
      }
   }
}
