package §@!`§
{
   public class §&!D§
   {
      
      private static var sInstance:§&!D§;
       
      
      private var §0!9§:Array;
      
      private var §?!7§:Array;
      
      public function §&!D§()
      {
         this.§0!9§ = [];
         this.§?!7§ = [];
         super();
         if(sInstance)
         {
            throw new Error("Can\'t create more than one instance of a singleton.");
         }
         sInstance = this;
      }
      
      public static function get §8!X§() : §&!D§
      {
         if(!sInstance)
         {
            sInstance = new §&!D§();
         }
         return sInstance;
      }
      
      public static function §[!d§(listA:Array, listB:Array) : Array
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
      
      public function §01§(userId:String) : void
      {
         if(this.§0!9§.indexOf(userId) == -1)
         {
            this.§0!9§.push(userId);
         }
      }
      
      public function §7!b§(userId:String) : Boolean
      {
         return this.§0!9§.indexOf(userId) == -1 && this.§?!7§.indexOf(userId) == -1;
      }
      
      public function §>1§(userId:String) : Boolean
      {
         return this.§?!7§.indexOf(userId) == -1;
      }
      
      public function §6d§(userId:String) : Boolean
      {
         return this.§?!7§.indexOf(userId) == -1;
      }
      
      public function §[C§() : Array
      {
         return this.§0!9§;
      }
      
      public function §]L§() : Array
      {
         return this.§?!7§;
      }
      
      public function §@!c§(dataObjects:Array) : void
      {
         var alreadyRequestedId:String = null;
         for each(alreadyRequestedId in dataObjects)
         {
            this.§01§(alreadyRequestedId);
         }
      }
      
      public function §'!c§(dataObjects:Array) : void
      {
         var uninstalledUIDs:String = null;
         for each(uninstalledUIDs in dataObjects)
         {
            if(this.§?!7§.indexOf(uninstalledUIDs) == -1)
            {
               this.§?!7§.push(uninstalledUIDs);
            }
         }
      }
   }
}
