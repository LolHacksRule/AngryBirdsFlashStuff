package §@V§
{
   import §1#@§.§["@§;
   import §]!6§.§6Y§;
   
   public class §0!d§
   {
       
      
      private var §1!@§:Vector.<§`#q§>;
      
      public function §0!d§()
      {
         super();
         this.§1!@§ = new Vector.<§`#q§>();
      }
      
      public function §,"m§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §6Y§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §["@§.§0"w§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §6Y§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§`#q§ = this.§3#3§(responseObj.C);
         if(responseObj.E)
         {
            this.§3#W§(responseObj);
            return;
         }
         if(sc.§,d§())
         {
            for each(fnc in sc.§?"6§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §6Y§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §3#W§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§`#q§ = this.§3#3§(param1.C);
         if(_loc2_.§,d§())
         {
            for each(_loc3_ in _loc2_.§?"6§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §6Y§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §[#m§(param1:String, param2:Function) : void
      {
         var _loc3_:§`#q§ = new §`#q§(param1,param2);
         this.§1!@§.push(_loc3_);
         §6Y§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §=U§() : Vector.<§`#q§>
      {
         return this.§1!@§;
      }
      
      public function §3#3§(param1:String) : §`#q§
      {
         var _loc2_:§`#q§ = null;
         for each(_loc2_ in this.§1!@§)
         {
            if(_loc2_.§;"p§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
