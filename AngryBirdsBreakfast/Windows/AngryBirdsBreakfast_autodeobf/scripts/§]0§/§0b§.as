package §]0§
{
   import §;K§.§&s§;
   import §<G§.§2C§;
   import flash.net.SharedObject;
   
   public class §0b§
   {
      
      protected static const §'"§:int = 365;
      
      protected static const §@!u§:Array = [§9x§.CHROME];
       
      
      public var data:Object;
      
      private var §0y§:String = "";
      
      private var §^J§:Boolean = false;
      
      private var §-!g§:String = "";
      
      public function §0b§(param1:String)
      {
         super();
         this.§0y§ = §9x§.§4!2§();
         this.§-!g§ = param1;
         this.§^J§ = §@!u§.indexOf(this.§0y§) != -1;
         this.§^!Z§();
      }
      
      public static function getLocal(param1:String) : §0b§
      {
         return new §0b§(param1);
      }
      
      public function clear() : void
      {
         var _loc1_:SharedObject = null;
         if(this.§^J§)
         {
            this.§`!q§();
         }
         else
         {
            _loc1_ = SharedObject.getLocal(this.§-!g§);
            _loc1_.clear();
         }
      }
      
      public function flush() : void
      {
         if(this.data != null)
         {
            if(this.§^J§)
            {
               this.§09§();
            }
            else
            {
               this.§#G§();
            }
         }
      }
      
      private function §`!q§() : void
      {
         §2C§.§^!A§("deleteCookie",this.§-!g§);
      }
      
      private function §09§() : void
      {
         var _loc1_:String = §&s§.encode(this.data);
         §2C§.§^!A§("storeCookie",this.§-!g§,_loc1_,§'"§);
      }
      
      private function §#G§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§-!g§);
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
      
      private function §^!Z§() : void
      {
         if(this.§^J§)
         {
            this.§%]§();
         }
         else
         {
            this.§8",§();
         }
      }
      
      private function §8",§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§-!g§);
            this.data = mySO.data;
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
      
      private function §%]§() : void
      {
         var returnObject:String = §2C§.§^!A§("readCookie",this.§-!g§);
         try
         {
            this.data = §&s§.§>7§(returnObject,false);
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
   }
}
