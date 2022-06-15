package § "C§
{
   import § !9§.§'!J§;
   import §6o§.§+!k§;
   
   public class §;P§
   {
       
      
      private var §=!z§:Vector.<§<r§>;
      
      public function §;P§()
      {
         super();
         this.§=!z§ = new Vector.<§<r§>();
      }
      
      public function §?k§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §+!k§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §'!J§.§0!>§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §+!k§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§<r§ = this.§0!`§(responseObj.C);
         if(responseObj.E)
         {
            this.§>=§(responseObj);
            return;
         }
         if(sc.§7!i§())
         {
            for each(fnc in sc.§6^§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §+!k§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §>=§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§<r§ = this.§0!`§(param1.C);
         if(_loc2_.§7!i§())
         {
            for each(_loc3_ in _loc2_.§6^§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §+!k§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §'!x§(param1:String, param2:Function) : void
      {
         var _loc3_:§<r§ = new §<r§(param1,param2);
         this.§=!z§.push(_loc3_);
         §+!k§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §&!O§() : Vector.<§<r§>
      {
         return this.§=!z§;
      }
      
      public function §0!`§(param1:String) : §<r§
      {
         var _loc2_:§<r§ = null;
         for each(_loc2_ in this.§=!z§)
         {
            if(_loc2_.§]`§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
