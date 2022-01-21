package §<Z§
{
   import §+P§.§;!%§;
   import §7,§.§=d§;
   import flash.net.SharedObject;
   
   public class §,!f§
   {
      
      protected static const §+!d§:int = 365;
      
      protected static const §7a§:Array = [§ do§.CHROME];
       
      
      public var data:Object;
      
      private var §,!A§:String = "";
      
      private var static:Boolean = false;
      
      private var §throw§:String = "";
      
      public function §,!f§(param1:String)
      {
         super();
         this.§,!A§ = § do§.§-6§();
         this.§throw§ = param1;
         this.static = §7a§.indexOf(this.§,!A§) != -1;
         this.§6S§();
      }
      
      public static function getLocal(param1:String) : §,!f§
      {
         return new §,!f§(param1);
      }
      
      public function clear() : void
      {
         var _loc1_:SharedObject = null;
         if(this.static)
         {
            this.§0!V§();
         }
         else
         {
            _loc1_ = SharedObject.getLocal(this.§throw§);
            _loc1_.clear();
         }
      }
      
      public function flush() : void
      {
         if(this.data != null)
         {
            if(this.static)
            {
               this.§6!`§();
            }
            else
            {
               this.§3A§();
            }
         }
      }
      
      private function §0!V§() : void
      {
         §=d§.§2!l§("deleteCookie",this.§throw§);
      }
      
      private function §6!`§() : void
      {
         var _loc1_:String = §;!%§.encode(this.data);
         §=d§.§2!l§("storeCookie",this.§throw§,_loc1_,§+!d§);
      }
      
      private function §3A§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§throw§);
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
      
      private function §6S§() : void
      {
         if(this.static)
         {
            this.§;!Q§();
         }
         else
         {
            this.§7!;§();
         }
      }
      
      private function §7!;§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§throw§);
            this.data = mySO.data;
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
      
      private function §;!Q§() : void
      {
         var returnObject:String = §=d§.§2!l§("readCookie",this.§throw§);
         try
         {
            this.data = §;!%§.§8[§(returnObject,false);
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
   }
}
