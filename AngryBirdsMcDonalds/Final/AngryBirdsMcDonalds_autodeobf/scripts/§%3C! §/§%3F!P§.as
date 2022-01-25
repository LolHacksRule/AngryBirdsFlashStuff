package §<! §
{
   import §#!8§.§]K§;
   import §<P§.§=d§;
   import flash.net.SharedObject;
   
   public class §?!P§
   {
      
      protected static const §=t§:int = 365;
      
      protected static const §1!!§:Array = [§@!&§.CHROME];
       
      
      public var data:Object;
      
      private var § ;§:String = "";
      
      private var §&!M§:Boolean = false;
      
      private var §;!C§:String = "";
      
      public function §?!P§(param1:String)
      {
         super();
         this.§ ;§ = §@!&§.§9]§();
         this.§;!C§ = param1;
         this.§&!M§ = §1!!§.indexOf(this.§ ;§) != -1;
         this.§!Y§();
      }
      
      public static function getLocal(param1:String) : §?!P§
      {
         return new §?!P§(param1);
      }
      
      public function clear() : void
      {
         var _loc1_:SharedObject = null;
         if(this.§&!M§)
         {
            this.§#!h§();
         }
         else
         {
            _loc1_ = SharedObject.getLocal(this.§;!C§);
            _loc1_.clear();
         }
      }
      
      public function flush() : void
      {
         if(this.data != null)
         {
            if(this.§&!M§)
            {
               this.§^![§();
            }
            else
            {
               this.§`o§();
            }
         }
      }
      
      private function §#!h§() : void
      {
         §=d§.§<3§("deleteCookie",this.§;!C§);
      }
      
      private function §^![§() : void
      {
         var _loc1_:String = §]K§.encode(this.data);
         §=d§.§<3§("storeCookie",this.§;!C§,_loc1_,§=t§);
      }
      
      private function §`o§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§;!C§);
            for(i in this.data)
            {
               mySO.data[i] = this.data[i];
            }
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      private function §!Y§() : void
      {
         if(this.§&!M§)
         {
            this.§3!;§();
         }
         else
         {
            this.§,b§();
         }
      }
      
      private function §,b§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§;!C§);
            this.data = mySO.data;
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
      
      private function §3!;§() : void
      {
         var returnObject:String = §=d§.§<3§("readCookie",this.§;!C§);
         try
         {
            this.data = §]K§.§3!c§(returnObject,false);
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
   }
}
