package com.angrybirds.utils
{
   import flash.net.SharedObject;
   
   public class LocalDataHandler
   {
       
      
      private var §>!7§:String = "";
      
      private var §5!d§:Object;
      
      public function LocalDataHandler(param1:String)
      {
         super();
         this.§>!7§ = param1;
         this.§<"3§();
      }
      
      public function load() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§5!d§.tutorials)
         {
            (§-!l§.§"x§ as AngryBirdsCustom).§7f§.setTutorialSeen(_loc1_);
         }
      }
      
      private function §<"3§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§>!7§);
            this.§5!d§ = mySO.data;
         }
         catch(e:Error)
         {
            §5!d§ = new Object();
         }
         if(!this.§5!d§.tutorials)
         {
            this.§5!d§.tutorials = [];
         }
      }
      
      public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         this.§5!d§.tutorials[param1] = param2;
         this.§8e§();
      }
      
      private function §8e§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§>!7§);
            for(i in this.§5!d§)
            {
               mySO.data[i] = this.§5!d§[i];
            }
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
   }
}
