package com.angrybirds.utils
{
   import §#G§.§8A§;
   import §6!!§.§4G§;
   import flash.net.SharedObject;
   
   public class §]!+§
   {
      
      protected static const §5"4§:int = 365;
      
      protected static const §&H§:Array = [];
       
      
      public var data:Object;
      
      private var §-!k§:String = "";
      
      private var §5;§:Boolean = false;
      
      private var §4!<§:String = "";
      
      public function §]!+§(param1:String)
      {
         super();
         this.§-!k§ = §]"7§.§+!P§();
         this.§4!<§ = param1;
         this.§5;§ = §&H§.indexOf(this.§-!k§) != -1;
         this.§"1§();
      }
      
      public static function getLocal(param1:String) : §]!+§
      {
         return new §]!+§(param1);
      }
      
      public function clear() : void
      {
         var _loc1_:SharedObject = null;
         if(this.§5;§)
         {
            this.§[!>§();
         }
         else
         {
            _loc1_ = SharedObject.getLocal(this.§4!<§);
            _loc1_.clear();
         }
      }
      
      public function flush() : void
      {
         if(this.data != null)
         {
            if(this.§5;§)
            {
               this.§6!D§();
            }
            else
            {
               this.§5G§();
            }
         }
      }
      
      private function §[!>§() : void
      {
         §4G§.§&!7§("deleteCookie",this.§4!<§);
      }
      
      private function §6!D§() : void
      {
         var _loc1_:String = §8A§.encode(this.data);
         §4G§.§&!7§("storeCookie",this.§4!<§,_loc1_,§5"4§);
      }
      
      private function §5G§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§4!<§);
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
      
      private function §"1§() : void
      {
         if(this.§5;§)
         {
            this.§05§();
         }
         else
         {
            this.§5!C§();
         }
      }
      
      private function §5!C§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§4!<§);
            this.data = mySO.data;
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
      
      private function §05§() : void
      {
         var returnObject:String = §4G§.§&!7§("readCookie",this.§4!<§);
         try
         {
            this.data = §8A§.§?!=§(returnObject,false);
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
   }
}
