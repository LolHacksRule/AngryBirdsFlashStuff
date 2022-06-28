package §<!=§
{
   public class §@a§
   {
      
      private static var sInstance:§@a§;
       
      
      private var §=!6§:Array;
      
      private var §@h§:Array;
      
      public function §@a§()
      {
         this.§=!6§ = [];
         this.§@h§ = [];
         super();
         if(sInstance)
         {
            throw new Error("Can\'t create more than one instance of a singleton.");
         }
         sInstance = this;
      }
      
      public static function get §&!'§() : §@a§
      {
         if(!sInstance)
         {
            sInstance = new §@a§();
         }
         return sInstance;
      }
      
      public static function §%!1§(listA:Array, listB:Array) : Array
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
      
      public function §,U§(userId:String) : void
      {
         if(this.§=!6§.indexOf(userId) == -1)
         {
            this.§=!6§.push(userId);
         }
      }
      
      public function §<![§(userId:String) : Boolean
      {
         return this.§=!6§.indexOf(userId) == -1 && this.§@h§.indexOf(userId) == -1;
      }
      
      public function §=!-§(userId:String) : Boolean
      {
         return this.§@h§.indexOf(userId) == -1;
      }
      
      public function §0w§(userId:String) : Boolean
      {
         return this.§@h§.indexOf(userId) == -1;
      }
      
      public function §<!g§() : Array
      {
         return this.§=!6§;
      }
      
      public function §3!E§() : Array
      {
         return this.§@h§;
      }
      
      public function §;g§(dataObjects:Array) : void
      {
         var alreadyRequestedId:String = null;
         for each(alreadyRequestedId in dataObjects)
         {
            this.§,U§(alreadyRequestedId);
         }
      }
      
      public function §64§(dataObjects:Array) : void
      {
         var uninstalledUIDs:String = null;
         for each(uninstalledUIDs in dataObjects)
         {
            if(this.§@h§.indexOf(uninstalledUIDs) == -1)
            {
               this.§@h§.push(uninstalledUIDs);
            }
         }
      }
   }
}
