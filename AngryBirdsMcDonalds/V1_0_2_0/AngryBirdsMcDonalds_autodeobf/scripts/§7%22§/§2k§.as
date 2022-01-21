package §7"§
{
   import §8r§.§8!c§;
   import §`c§.§`Z§;
   import flash.net.SharedObject;
   
   public class §2k§
   {
      
      protected static const §5e§:int = 365;
      
      protected static const §'!_§:Array = [§1p§.CHROME];
       
      
      public var data:Object;
      
      private var §,!R§:String = "";
      
      private var §4p§:Boolean = false;
      
      private var §0!W§:String = "";
      
      public function §2k§(param1:String)
      {
         super();
         this.§,!R§ = §1p§.§#!Q§();
         this.§0!W§ = param1;
         this.§4p§ = §'!_§.indexOf(this.§,!R§) != -1;
         this.§[!5§();
      }
      
      public static function getLocal(param1:String) : §2k§
      {
         return new §2k§(param1);
      }
      
      public function clear() : void
      {
         var _loc1_:SharedObject = null;
         if(this.§4p§)
         {
            this.§!!n§();
         }
         else
         {
            _loc1_ = SharedObject.getLocal(this.§0!W§);
            _loc1_.clear();
         }
      }
      
      public function flush() : void
      {
         if(this.data != null)
         {
            if(this.§4p§)
            {
               this.§3K§();
            }
            else
            {
               this.§`y§();
            }
         }
      }
      
      private function §!!n§() : void
      {
         §`Z§.§?D§("deleteCookie",this.§0!W§);
      }
      
      private function §3K§() : void
      {
         var _loc1_:String = §8!c§.encode(this.data);
         §`Z§.§?D§("storeCookie",this.§0!W§,_loc1_,§5e§);
      }
      
      private function §`y§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§0!W§);
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
      
      private function §[!5§() : void
      {
         if(this.§4p§)
         {
            this.§#!c§();
         }
         else
         {
            this.§0]§();
         }
      }
      
      private function §0]§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§0!W§);
            this.data = mySO.data;
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
      
      private function §#!c§() : void
      {
         var returnObject:String = §`Z§.§?D§("readCookie",this.§0!W§);
         try
         {
            this.data = §8!c§.§`!S§(returnObject,false);
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
   }
}
