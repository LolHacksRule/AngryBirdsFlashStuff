package com.angrybirds.utils
{
   import §2J§.§7!-§;
   import §^t§.§4!C§;
   import flash.net.SharedObject;
   
   public class §1k§
   {
      
      protected static const §0V§:int = 365;
      
      protected static const §>!7§:Array = [];
       
      
      public var data:Object;
      
      private var §+S§:String = "";
      
      private var §>$§:Boolean = false;
      
      private var §^R§:String = "";
      
      public function §1k§(param1:String)
      {
         super();
         this.§+S§ = §?^§.§6^§();
         this.§^R§ = param1;
         this.§>$§ = §>!7§.indexOf(this.§+S§) != -1;
         this.§>4§();
      }
      
      public static function getLocal(param1:String) : §1k§
      {
         return new §1k§(param1);
      }
      
      public function clear() : void
      {
         var _loc1_:SharedObject = null;
         if(this.§>$§)
         {
            this.§9l§();
         }
         else
         {
            _loc1_ = SharedObject.getLocal(this.§^R§);
            _loc1_.clear();
         }
      }
      
      public function flush() : void
      {
         if(this.data != null)
         {
            if(this.§>$§)
            {
               this.§5"5§();
            }
            else
            {
               this.§[!?§();
            }
         }
      }
      
      private function §9l§() : void
      {
         §4!C§.§6'§("deleteCookie",this.§^R§);
      }
      
      private function §5"5§() : void
      {
         var _loc1_:String = §7!-§.encode(this.data);
         §4!C§.§6'§("storeCookie",this.§^R§,_loc1_,§0V§);
      }
      
      private function §[!?§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§^R§);
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
      
      private function §>4§() : void
      {
         if(this.§>$§)
         {
            this.§[!p§();
         }
         else
         {
            this.§]i§();
         }
      }
      
      private function §]i§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§^R§);
            this.data = mySO.data;
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
      
      private function §[!p§() : void
      {
         var returnObject:String = §4!C§.§6'§("readCookie",this.§^R§);
         try
         {
            this.data = §7!-§.§'!w§(returnObject,false);
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
   }
}
