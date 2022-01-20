package §&6§
{
   import §%!H§.§<!_§;
   import §%e§.§4§;
   import flash.net.SharedObject;
   
   public class § !4§
   {
      
      protected static const §]!#§:int = 365;
      
      protected static const §^!F§:Array = [§1!Z§.CHROME];
       
      
      public var data:Object;
      
      private var §5<§:String = "";
      
      private var §5J§:Boolean = false;
      
      private var §!-§:String = "";
      
      public function § !4§(param1:String)
      {
         super();
         this.§5<§ = §1!Z§.§ z§();
         this.§!-§ = param1;
         this.§5J§ = §^!F§.indexOf(this.§5<§) != -1;
         this.§,G§();
      }
      
      public static function getLocal(param1:String) : § !4§
      {
         return new § !4§(param1);
      }
      
      public function clear() : void
      {
         var _loc1_:SharedObject = null;
         if(this.§5J§)
         {
            this.§@!I§();
         }
         else
         {
            _loc1_ = SharedObject.getLocal(this.§!-§);
            _loc1_.clear();
         }
      }
      
      public function flush() : void
      {
         if(this.data != null)
         {
            if(this.§5J§)
            {
               this.§&! §();
            }
            else
            {
               this.§#!$§();
            }
         }
      }
      
      private function §@!I§() : void
      {
         §4§.§>A§("deleteCookie",this.§!-§);
      }
      
      private function §&! §() : void
      {
         var _loc1_:String = §<!_§.encode(this.data);
         §4§.§>A§("storeCookie",this.§!-§,_loc1_,§]!#§);
      }
      
      private function §#!$§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§!-§);
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
      
      private function §,G§() : void
      {
         if(this.§5J§)
         {
            this.§1!?§();
         }
         else
         {
            this.§-!0§();
         }
      }
      
      private function §-!0§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§!-§);
            this.data = mySO.data;
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
      
      private function §1!?§() : void
      {
         var returnObject:String = §4§.§>A§("readCookie",this.§!-§);
         try
         {
            this.data = §<!_§.§8!R§(returnObject,false);
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
   }
}
