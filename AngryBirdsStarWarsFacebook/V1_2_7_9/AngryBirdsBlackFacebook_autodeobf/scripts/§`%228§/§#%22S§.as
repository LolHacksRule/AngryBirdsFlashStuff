package §`"8§
{
   import flash.net.SharedObject;
   
   public class §#"S§
   {
      
      public static const §@" §:String = "challenge";
      
      public static const §[!i§:String = "gift";
      
      public static const §'"H§:String = "invite";
       
      
      private var §1"^§:SharedObject;
      
      public function §#"S§()
      {
         super();
         try
         {
            this.§1"^§ = SharedObject.getLocal(§&"1§.§9"e§,§&"1§.§+!$§);
            if(!this.§1"^§.data.quickPopupsLastOpenTime)
            {
               this.§1"^§.data.quickPopupsLastOpenTime = {};
               this.§1"^§.flush();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public function §]"w§(param1:String) : Number
      {
         var _loc2_:Number = 0;
         try
         {
            _loc2_ = Number(this.§1"^§.data.quickPopupsLastOpenTime[param1]) || Number(0);
         }
         catch(e:Error)
         {
         }
         return _loc2_;
      }
      
      public function §-!v§(param1:String) : void
      {
         try
         {
            this.§1"^§.data.quickPopupsLastOpenTime[param1] = new Date().time;
            this.§1"^§.flush();
         }
         catch(e:Error)
         {
         }
      }
   }
}
