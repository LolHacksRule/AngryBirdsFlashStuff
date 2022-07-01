package com.angrybirds.utils
{
   import §!! §.§!!M§;
   import §'!'§.§0!p§;
   import flash.net.SharedObject;
   
   public class §#!y§
   {
      
      protected static const §while§:int = 365;
      
      protected static const §9"§:Array = [];
       
      
      public var data:Object;
      
      private var §%M§:String = "";
      
      private var §,!J§:Boolean = false;
      
      private var §@]§:String = "";
      
      public function §#!y§(param1:String)
      {
         super();
         this.§%M§ = §!W§.§#!C§();
         this.§@]§ = param1;
         this.§,!J§ = §9"§.indexOf(this.§%M§) != -1;
         this.§9P§();
      }
      
      public static function getLocal(param1:String) : §#!y§
      {
         return new §#!y§(param1);
      }
      
      public function clear() : void
      {
         var _loc1_:SharedObject = null;
         if(this.§,!J§)
         {
            this.§>E§();
         }
         else
         {
            _loc1_ = SharedObject.getLocal(this.§@]§);
            _loc1_.clear();
         }
      }
      
      public function flush() : void
      {
         if(this.data != null)
         {
            if(this.§,!J§)
            {
               this.§>"2§();
            }
            else
            {
               this.§;h§();
            }
         }
      }
      
      private function §>E§() : void
      {
         §0!p§.§`_§("deleteCookie",this.§@]§);
      }
      
      private function §>"2§() : void
      {
         var _loc1_:String = §!!M§.encode(this.data);
         §0!p§.§`_§("storeCookie",this.§@]§,_loc1_,§while§);
      }
      
      private function §;h§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§@]§);
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
      
      private function §9P§() : void
      {
         if(this.§,!J§)
         {
            this.§!"5§();
         }
         else
         {
            this.§=!y§();
         }
      }
      
      private function §=!y§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§@]§);
            this.data = mySO.data;
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
      
      private function §!"5§() : void
      {
         var returnObject:String = §0!p§.§`_§("readCookie",this.§@]§);
         try
         {
            this.data = §!!M§.§"!#§(returnObject,false);
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
   }
}
