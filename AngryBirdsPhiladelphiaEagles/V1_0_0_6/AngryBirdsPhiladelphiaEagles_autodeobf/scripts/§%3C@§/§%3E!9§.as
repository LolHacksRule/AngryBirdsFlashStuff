package §<@§
{
   import §!@§.§^!5§;
   import §3!O§.§5q§;
   
   public class §>!9§
   {
       
      
      private var § &§:Vector.<§&6§>;
      
      public function §>!9§()
      {
         super();
         this.§ &§ = new Vector.<§&6§>();
      }
      
      public function § !%§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §5q§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §^!5§.§^+§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §5q§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§&6§ = this.§[k§(responseObj.C);
         if(responseObj.E)
         {
            this.§`!4§(responseObj);
            return;
         }
         if(sc.§!!'§())
         {
            for each(fnc in sc.§2M§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §5q§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §`!4§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§&6§ = this.§[k§(param1.C);
         if(_loc2_.§!!'§())
         {
            for each(_loc3_ in _loc2_.§2M§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §5q§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §,_§(param1:String, param2:Function) : void
      {
         var _loc3_:§&6§ = new §&6§(param1,param2);
         this.§ &§.push(_loc3_);
         §5q§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §5$§() : Vector.<§&6§>
      {
         return this.§ &§;
      }
      
      public function §[k§(param1:String) : §&6§
      {
         var _loc2_:§&6§ = null;
         for each(_loc2_ in this.§ &§)
         {
            if(_loc2_.§!d§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
