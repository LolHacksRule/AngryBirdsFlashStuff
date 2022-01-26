package com.angrybirds.utils
{
   import flash.net.SharedObject;
   
   public class LocalDataHandler
   {
       
      
      private var §1q§:String = "";
      
      private var §7!?§:Object;
      
      public function LocalDataHandler(param1:String)
      {
         super();
         this.§1q§ = param1;
         this.§?!-§();
      }
      
      public function load() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§7!?§.tutorials)
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.setTutorialSeen(_loc1_);
         }
      }
      
      private function §?!-§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§1q§);
            this.§7!?§ = mySO.data;
         }
         catch(e:Error)
         {
            §7!?§ = new Object();
         }
         if(!this.§7!?§.tutorials)
         {
            this.§7!?§.tutorials = [];
         }
      }
      
      public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         this.§7!?§.tutorials[param1] = param2;
         this.§[0§();
      }
      
      private function §[0§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§1q§);
            for(i in this.§7!?§)
            {
               mySO.data[i] = this.§7!?§[i];
            }
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
   }
}
