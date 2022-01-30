package com.angrybirds.utils
{
   import flash.net.SharedObject;
   
   public class LocalDataHandler
   {
       
      
      private var §2"-§:String = "";
      
      private var §]"+§:Object;
      
      public function LocalDataHandler(param1:String)
      {
         super();
         this.§2"-§ = param1;
         this.§=U§();
      }
      
      public function load() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§]"+§.tutorials)
         {
            (§-!I§.§[f§ as AngryBirdsCustom).§=! §.setTutorialSeen(_loc1_);
         }
      }
      
      private function §=U§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§2"-§);
            this.§]"+§ = mySO.data;
         }
         catch(e:Error)
         {
            §]"+§ = new Object();
         }
         if(!this.§]"+§.tutorials)
         {
            this.§]"+§.tutorials = [];
         }
      }
      
      public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         this.§]"+§.tutorials[param1] = param2;
         this.§`N§();
      }
      
      private function §`N§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§2"-§);
            for(i in this.§]"+§)
            {
               mySO.data[i] = this.§]"+§[i];
            }
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
   }
}
