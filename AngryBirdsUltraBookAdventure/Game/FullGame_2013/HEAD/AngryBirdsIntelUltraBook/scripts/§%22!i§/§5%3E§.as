package §"!i§
{
   public class §5>§
   {
      
      private static var sInstance:§5>§;
       
      
      private var §=H§:Array;
      
      private var §`!'§:Array;
      
      public function §5>§()
      {
         this.§=H§ = [];
         this.§`!'§ = [];
         super();
         if(sInstance)
         {
            throw new Error("Can\'t create more than one instance of a singleton.");
         }
         sInstance = this;
      }
      
      public static function get §7!E§() : §5>§
      {
         if(!sInstance)
         {
            sInstance = new §5>§();
         }
         return sInstance;
      }
      
      public static function §%^§(listA:Array, listB:Array) : Array
      {
         var userID:String = null;
         var combined:Array = listA.concat();
         for each(userID in listB)
         {
            if(combined.indexOf(userID) == -1)
            {
               combined.push(userID);
            }
         }
         return combined;
      }
      
      public function §[!0§(userId:String) : void
      {
         if(this.§=H§.indexOf(userId) == -1)
         {
            this.§=H§.push(userId);
         }
      }
      
      public function §6!$§(userId:String) : Boolean
      {
         return this.§=H§.indexOf(userId) == -1 && this.§`!'§.indexOf(userId) == -1;
      }
      
      public function §3!6§(userId:String) : Boolean
      {
         return this.§`!'§.indexOf(userId) == -1;
      }
      
      public function §87§(userId:String) : Boolean
      {
         return this.§`!'§.indexOf(userId) == -1;
      }
      
      public function §"M§() : Array
      {
         return this.§=H§;
      }
      
      public function §'!X§() : Array
      {
         return this.§`!'§;
      }
      
      public function §[F§(dataObjects:Array) : void
      {
         var alreadyRequestedId:String = null;
         for each(alreadyRequestedId in dataObjects)
         {
            this.§[!0§(alreadyRequestedId);
         }
      }
      
      public function §+X§(dataObjects:Array) : void
      {
         var uninstalledUIDs:String = null;
         for each(uninstalledUIDs in dataObjects)
         {
            if(this.§`!'§.indexOf(uninstalledUIDs) == -1)
            {
               this.§`!'§.push(uninstalledUIDs);
            }
         }
      }
   }
}
