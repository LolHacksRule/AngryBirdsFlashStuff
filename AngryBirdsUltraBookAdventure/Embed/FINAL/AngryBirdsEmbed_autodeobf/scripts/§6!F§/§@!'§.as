package §6!F§
{
   import §3a§.§7!+§;
   import §?!7§.§<M§;
   
   public class §@!'§
   {
       
      
      private var §9X§:Vector.<§3!>§>;
      
      public function §@!'§()
      {
         super();
         this.§9X§ = new Vector.<§3!>§>();
      }
      
      public function §8g§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §7!+§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §<M§.decode(responseObj.json);
               for(k2 in jsonObj)
               {
                  §7!+§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§3!>§ = this.§0!&§(responseObj.C);
         if(responseObj.E)
         {
            this.§]i§(responseObj);
            return;
         }
         if(sc.§&!7§())
         {
            for each(fnc in sc.§@Y§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §7!+§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §]i§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§3!>§ = this.§0!&§(param1.C);
         if(_loc2_.§&!7§())
         {
            for each(_loc3_ in _loc2_.§@Y§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §7!+§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §>!M§(param1:String, param2:Function) : void
      {
         var _loc3_:§3!>§ = new §3!>§(param1,param2);
         this.§9X§.push(_loc3_);
         §7!+§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §9!'§() : Vector.<§3!>§>
      {
         return this.§9X§;
      }
      
      public function §0!&§(param1:String) : §3!>§
      {
         var _loc2_:§3!>§ = null;
         for each(_loc2_ in this.§9X§)
         {
            if(_loc2_.§&D§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
