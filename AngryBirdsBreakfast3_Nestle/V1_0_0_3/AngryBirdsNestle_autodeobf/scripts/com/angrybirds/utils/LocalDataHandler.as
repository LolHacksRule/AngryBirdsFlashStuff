package com.angrybirds.utils
{
   import flash.net.SharedObject;
   
   public class LocalDataHandler
   {
       
      
      private var §5O§:String = "";
      
      private var §@r§:Object;
      
      public function LocalDataHandler(param1:String)
      {
         super();
         this.§5O§ = param1;
         this.§4N§();
      }
      
      public function load() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§@r§.tutorials)
         {
            (§&N§.§#Y§ as AngryBirdsCustom).§2Z§.setTutorialSeen(_loc1_);
         }
      }
      
      private function §4N§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§5O§);
            this.§@r§ = mySO.data;
         }
         catch(e:Error)
         {
            §@r§ = new Object();
         }
         if(!this.§@r§.tutorials)
         {
            this.§@r§.tutorials = [];
         }
      }
      
      public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         this.§@r§.tutorials[param1] = param2;
         this.§!C§();
      }
      
      private function §!C§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§5O§);
            for(i in this.§@r§)
            {
               mySO.data[i] = this.§@r§[i];
            }
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
   }
}
