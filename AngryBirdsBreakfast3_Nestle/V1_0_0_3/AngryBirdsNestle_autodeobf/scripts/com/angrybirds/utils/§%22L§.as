package com.angrybirds.utils
{
   import § !H§.§0!m§;
   import §,n§.§;!h§;
   import flash.net.SharedObject;
   
   public class §"L§
   {
      
      protected static const §""%§:int = 365;
      
      protected static const §7c§:Array = [];
       
      
      public var data:Object;
      
      private var §+v§:String = "";
      
      private var §43§:Boolean = false;
      
      private var §]b§:String = "";
      
      public function §"L§(param1:String)
      {
         super();
         this.§+v§ = §8$§.§6!y§();
         this.§]b§ = param1;
         this.§43§ = §7c§.indexOf(this.§+v§) != -1;
         this.§'![§();
      }
      
      public static function getLocal(param1:String) : §"L§
      {
         return new §"L§(param1);
      }
      
      public function clear() : void
      {
         var _loc1_:SharedObject = null;
         if(this.§43§)
         {
            this.§5!D§();
         }
         else
         {
            _loc1_ = SharedObject.getLocal(this.§]b§);
            _loc1_.clear();
         }
      }
      
      public function flush() : void
      {
         if(this.data != null)
         {
            if(this.§43§)
            {
               this.§<o§();
            }
            else
            {
               this.§7z§();
            }
         }
      }
      
      private function §5!D§() : void
      {
         §0!m§.§<Q§("deleteCookie",this.§]b§);
      }
      
      private function §<o§() : void
      {
         var _loc1_:String = §;!h§.encode(this.data);
         §0!m§.§<Q§("storeCookie",this.§]b§,_loc1_,§""%§);
      }
      
      private function §7z§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§]b§);
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
      
      private function §'![§() : void
      {
         if(this.§43§)
         {
            this.§4!"§();
         }
         else
         {
            this.§4N§();
         }
      }
      
      private function §4N§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§]b§);
            this.data = mySO.data;
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
      
      private function §4!"§() : void
      {
         var returnObject:String = §0!m§.§<Q§("readCookie",this.§]b§);
         try
         {
            this.data = §;!h§.§51§(returnObject,false);
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
   }
}
