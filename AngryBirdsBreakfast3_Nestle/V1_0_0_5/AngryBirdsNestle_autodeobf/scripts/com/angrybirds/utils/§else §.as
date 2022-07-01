package com.angrybirds.utils
{
   import §&!k§.§]!q§;
   import §8x§.§]"-§;
   import flash.net.SharedObject;
   
   public class §else §
   {
      
      protected static const § f§:int = 365;
      
      protected static const §'i§:Array = [];
       
      
      public var data:Object;
      
      private var §-!V§:String = "";
      
      private var §<$§:Boolean = false;
      
      private var §0!H§:String = "";
      
      public function §else §(param1:String)
      {
         super();
         this.§-!V§ = §#!7§.§;'§();
         this.§0!H§ = param1;
         this.§<$§ = §'i§.indexOf(this.§-!V§) != -1;
         this.§ r§();
      }
      
      public static function getLocal(param1:String) : §else §
      {
         return new §else §(param1);
      }
      
      public function clear() : void
      {
         var _loc1_:SharedObject = null;
         if(this.§<$§)
         {
            this.§3X§();
         }
         else
         {
            _loc1_ = SharedObject.getLocal(this.§0!H§);
            _loc1_.clear();
         }
      }
      
      public function flush() : void
      {
         if(this.data != null)
         {
            if(this.§<$§)
            {
               this.§2f§();
            }
            else
            {
               this.§&c§();
            }
         }
      }
      
      private function §3X§() : void
      {
         §]"-§.§6V§("deleteCookie",this.§0!H§);
      }
      
      private function §2f§() : void
      {
         var _loc1_:String = §]!q§.encode(this.data);
         §]"-§.§6V§("storeCookie",this.§0!H§,_loc1_,§ f§);
      }
      
      private function §&c§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§0!H§);
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
      
      private function § r§() : void
      {
         if(this.§<$§)
         {
            this.§>n§();
         }
         else
         {
            this.§=U§();
         }
      }
      
      private function §=U§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§0!H§);
            this.data = mySO.data;
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
      
      private function §>n§() : void
      {
         var returnObject:String = §]"-§.§6V§("readCookie",this.§0!H§);
         try
         {
            this.data = §]!q§.§"""§(returnObject,false);
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
   }
}
