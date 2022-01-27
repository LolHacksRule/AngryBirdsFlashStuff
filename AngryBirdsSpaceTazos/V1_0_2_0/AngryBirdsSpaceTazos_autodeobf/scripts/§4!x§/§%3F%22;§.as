package §4!x§
{
   import §6!J§.§ try§;
   import §<l§.§#r§;
   import flash.net.SharedObject;
   
   public class §?";§
   {
      
      protected static const §3!$§:int = 365;
      
      protected static const §2S§:Array = [§["&§.CHROME];
       
      
      public var data:Object;
      
      private var §#"9§:String = "";
      
      private var §0h§:Boolean = false;
      
      private var §6!c§:String = "";
      
      public function §?";§(param1:String)
      {
         super();
         this.§#"9§ = §["&§.§#!?§();
         this.§6!c§ = param1;
         this.§0h§ = §2S§.indexOf(this.§#"9§) != -1;
         this.§-!]§();
      }
      
      public static function getLocal(param1:String) : §?";§
      {
         return new §?";§(param1);
      }
      
      public function clear() : void
      {
         var _loc1_:SharedObject = null;
         if(this.§0h§)
         {
            this.§#!7§();
         }
         else
         {
            _loc1_ = SharedObject.getLocal(this.§6!c§);
            _loc1_.clear();
         }
      }
      
      public function flush() : void
      {
         if(this.data != null)
         {
            if(this.§0h§)
            {
               this.§^";§();
            }
            else
            {
               this.§6!6§();
            }
         }
      }
      
      private function §#!7§() : void
      {
         §#r§.§#!2§("deleteCookie",this.§6!c§);
      }
      
      private function §^";§() : void
      {
         var _loc1_:String = § try§.encode(this.data);
         §#r§.§#!2§("storeCookie",this.§6!c§,_loc1_,§3!$§);
      }
      
      private function §6!6§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§6!c§);
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
      
      private function §-!]§() : void
      {
         if(this.§0h§)
         {
            this.§"!^§();
         }
         else
         {
            this.§@k§();
         }
      }
      
      private function §@k§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§6!c§);
            this.data = mySO.data;
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
      
      private function §"!^§() : void
      {
         var returnObject:String = §#r§.§#!2§("readCookie",this.§6!c§);
         try
         {
            this.data = § try§.§^!K§(returnObject,false);
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
   }
}
