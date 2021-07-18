package §+!h§
{
   import §,!3§.§#"C§;
   import §0N§.§2!@§;
   
   public class §'7§
   {
       
      
      private var §<"-§:Vector.<§5!6§>;
      
      public function §'7§()
      {
         super();
         this.§<"-§ = new Vector.<§5!6§>();
      }
      
      public function §`!i§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §2!@§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §#"C§.§+c§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §2!@§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§5!6§ = this.§1"B§(responseObj.C);
         if(responseObj.E)
         {
            this.§1!J§(responseObj);
            return;
         }
         if(sc.§7"B§())
         {
            for each(fnc in sc.§7P§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §2!@§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §1!J§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§5!6§ = this.§1"B§(param1.C);
         if(_loc2_.§7"B§())
         {
            for each(_loc3_ in _loc2_.§7P§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §2!@§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §!r§(param1:String, param2:Function) : void
      {
         var _loc3_:§5!6§ = new §5!6§(param1,param2);
         this.§<"-§.push(_loc3_);
         §2!@§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §,!b§() : Vector.<§5!6§>
      {
         return this.§<"-§;
      }
      
      public function §1"B§(param1:String) : §5!6§
      {
         var _loc2_:§5!6§ = null;
         for each(_loc2_ in this.§<"-§)
         {
            if(_loc2_.§&!8§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
