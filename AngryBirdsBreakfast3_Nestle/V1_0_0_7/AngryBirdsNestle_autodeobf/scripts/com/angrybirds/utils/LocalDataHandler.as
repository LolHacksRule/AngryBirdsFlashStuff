package com.angrybirds.utils
{
   import flash.net.SharedObject;
   
   public class LocalDataHandler
   {
       
      
      private var § z§:String = "";
      
      private var §7p§:Object;
      
      public function LocalDataHandler(param1:String)
      {
         super();
         this.§ z§ = param1;
         this.§=!y§();
      }
      
      public function load() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§7p§.tutorials)
         {
            (§,!X§.§>!G§ as AngryBirdsCustom).§<0§.setTutorialSeen(_loc1_);
         }
      }
      
      private function §=!y§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§ z§);
            this.§7p§ = mySO.data;
         }
         catch(e:Error)
         {
            §7p§ = new Object();
         }
         if(!this.§7p§.tutorials)
         {
            this.§7p§.tutorials = [];
         }
      }
      
      public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         this.§7p§.tutorials[param1] = param2;
         this.§03§();
      }
      
      private function §03§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§ z§);
            for(i in this.§7p§)
            {
               mySO.data[i] = this.§7p§[i];
            }
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
   }
}
