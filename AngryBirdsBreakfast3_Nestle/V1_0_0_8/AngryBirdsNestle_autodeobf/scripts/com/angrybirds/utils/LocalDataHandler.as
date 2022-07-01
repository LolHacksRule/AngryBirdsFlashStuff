package com.angrybirds.utils
{
   import flash.net.SharedObject;
   
   public class LocalDataHandler
   {
       
      
      private var §5m§:String = "";
      
      private var §7n§:Object;
      
      public function LocalDataHandler(param1:String)
      {
         super();
         this.§5m§ = param1;
         this.§]i§();
      }
      
      public function load() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§7n§.tutorials)
         {
            (§-O§.§5!1§ as AngryBirdsCustom).§;!1§.setTutorialSeen(_loc1_);
         }
      }
      
      private function §]i§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§5m§);
            this.§7n§ = mySO.data;
         }
         catch(e:Error)
         {
            §7n§ = new Object();
         }
         if(!this.§7n§.tutorials)
         {
            this.§7n§.tutorials = [];
         }
      }
      
      public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         this.§7n§.tutorials[param1] = param2;
         this.§ null§();
      }
      
      private function § null§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§5m§);
            for(i in this.§7n§)
            {
               mySO.data[i] = this.§7n§[i];
            }
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
   }
}
