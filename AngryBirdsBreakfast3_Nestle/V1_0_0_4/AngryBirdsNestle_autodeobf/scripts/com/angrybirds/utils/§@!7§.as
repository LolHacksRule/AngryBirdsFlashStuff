package com.angrybirds.utils
{
   import §4!V§.§8!?§;
   import §?-§.§do §;
   import flash.net.SharedObject;
   
   public class §@!7§
   {
      
      protected static const §'"0§:int = 365;
      
      protected static const §[q§:Array = [];
       
      
      public var data:Object;
      
      private var §7"4§:String = "";
      
      private var §98§:Boolean = false;
      
      private var §[!Z§:String = "";
      
      public function §@!7§(param1:String)
      {
         super();
         this.§7"4§ = §>3§.§`!7§();
         this.§[!Z§ = param1;
         this.§98§ = §[q§.indexOf(this.§7"4§) != -1;
         this.§8!t§();
      }
      
      public static function getLocal(param1:String) : §@!7§
      {
         return new §@!7§(param1);
      }
      
      public function clear() : void
      {
         var _loc1_:SharedObject = null;
         if(this.§98§)
         {
            this.§2!u§();
         }
         else
         {
            _loc1_ = SharedObject.getLocal(this.§[!Z§);
            _loc1_.clear();
         }
      }
      
      public function flush() : void
      {
         if(this.data != null)
         {
            if(this.§98§)
            {
               this.§!I§();
            }
            else
            {
               this.§?E§();
            }
         }
      }
      
      private function §2!u§() : void
      {
         §do §.§>"-§("deleteCookie",this.§[!Z§);
      }
      
      private function §!I§() : void
      {
         var _loc1_:String = §8!?§.encode(this.data);
         §do §.§>"-§("storeCookie",this.§[!Z§,_loc1_,§'"0§);
      }
      
      private function §?E§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§[!Z§);
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
      
      private function §8!t§() : void
      {
         if(this.§98§)
         {
            this.§ ! §();
         }
         else
         {
            this.§<"3§();
         }
      }
      
      private function §<"3§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§[!Z§);
            this.data = mySO.data;
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
      
      private function § ! §() : void
      {
         var returnObject:String = §do §.§>"-§("readCookie",this.§[!Z§);
         try
         {
            this.data = §8!?§.§@!=§(returnObject,false);
         }
         catch(e:Error)
         {
            data = new Object();
         }
      }
   }
}
