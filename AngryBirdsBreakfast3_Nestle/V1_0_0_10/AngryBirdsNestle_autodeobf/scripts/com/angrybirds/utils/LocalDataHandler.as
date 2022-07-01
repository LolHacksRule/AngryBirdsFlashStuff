package com.angrybirds.utils
{
   import flash.net.SharedObject;
   
   public class LocalDataHandler
   {
       
      
      private var §&>§:String = "";
      
      private var §9"-§:Object;
      
      public function LocalDataHandler(param1:String)
      {
         super();
         this.§&>§ = param1;
         this.§5!C§();
      }
      
      public function load() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§9"-§.tutorials)
         {
            (§-!2§.§7O§ as AngryBirdsCustom).§,"5§.setTutorialSeen(_loc1_);
         }
      }
      
      private function §5!C§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§&>§);
            this.§9"-§ = mySO.data;
         }
         catch(e:Error)
         {
            §9"-§ = new Object();
         }
         if(!this.§9"-§.tutorials)
         {
            this.§9"-§.tutorials = [];
         }
      }
      
      public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         this.§9"-§.tutorials[param1] = param2;
         this.§,w§();
      }
      
      private function §,w§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§&>§);
            for(i in this.§9"-§)
            {
               mySO.data[i] = this.§9"-§[i];
            }
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
   }
}
