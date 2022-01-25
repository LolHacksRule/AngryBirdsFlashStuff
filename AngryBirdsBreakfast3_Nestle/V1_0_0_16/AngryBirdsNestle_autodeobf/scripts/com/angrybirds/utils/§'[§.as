package com.angrybirds.utils
{
   import §,j§.§'u§;
   import §;V§.§%c§;
   import flash.net.SharedObject;
   
   public class §'[§
   {
      
      protected static const §<!O§:int = 365;
      
      protected static const §9]§:Array = [];
       
      
      public var data:Object;
      
      private var §[!l§:String = "";
      
      private var §;!<§:Boolean = false;
      
      private var §"O§:String = "";
      
      public function §'[§(param1:String)
      {
         super();
         this.§[!l§ = §'!P§.§7R§();
         this.§"O§ = param1;
         this.§;!<§ = §9]§.indexOf(this.§[!l§) != -1;
         this.§-m§();
      }
      
      public static function getLocal(param1:String) : §'[§
      {
         return new §'[§(param1);
      }
      
      public function clear() : void
      {
         var _loc1_:SharedObject = null;
         if(this.§;!<§)
         {
            this.§2i§();
         }
         else
         {
            _loc1_ = SharedObject.getLocal(this.§"O§);
            _loc1_.clear();
         }
      }
      
      public function flush() : void
      {
         if(this.data != null)
         {
            if(this.§;!<§)
            {
               this.§"!%§();
            }
            else
            {
               this.§%!$§();
            }
         }
      }
      
      private function §2i§() : void
      {
         §%c§.§6"§("deleteCookie",this.§"O§);
      }
      
      private function §"!%§() : void
      {
         var _loc1_:String = §'u§.encode(this.data);
         §%c§.§6"§("storeCookie",this.§"O§,_loc1_,§<!O§);
      }
      
      private function §%!$§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§"O§);
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
      
      private function §-m§() : void
      {
         if(this.§;!<§)
         {
            this.§&!t§();
         }
         else
         {
            this.§?!-§();
         }
      }
      
      private function §?!-§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§"O§);
            this.data = mySO.data;
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
      
      private function §&!t§() : void
      {
         var returnObject:String = §%c§.§6"§("readCookie",this.§"O§);
         try
         {
            this.data = §'u§.§&!Z§(returnObject,false);
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
   }
}
