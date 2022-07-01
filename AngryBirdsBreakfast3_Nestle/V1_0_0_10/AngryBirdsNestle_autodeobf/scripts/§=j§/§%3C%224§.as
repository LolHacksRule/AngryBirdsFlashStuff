package §=j§
{
   import §#G§.§8A§;
   import §8!$§.§?p§;
   
   public class §<"4§
   {
       
      
      private var §;!3§:Vector.<§5-§>;
      
      public function §<"4§()
      {
         super();
         this.§;!3§ = new Vector.<§5-§>();
      }
      
      public function §@3§(param1:Object) : void
      {
         var k:String = null;
         var jsonObj:Object = null;
         var k2:String = null;
         var fnc:Function = null;
         var responseObj:Object = param1;
         for(k in responseObj)
         {
            §?p§.log("RESPONSE_KEY: " + k + ", VALUE: " + responseObj[k]);
         }
         if(responseObj.json != null)
         {
            try
            {
               jsonObj = §8A§.§?!=§(responseObj.json);
               for(k2 in jsonObj)
               {
                  §?p§.log("RESPONSE KEY (json):" + k2 + ", VALUE:" + jsonObj[k2]);
                  responseObj[k2] = jsonObj[k2];
               }
            }
            catch(e:Error)
            {
            }
         }
         var sc:§5-§ = this.§extends§(responseObj.C);
         if(responseObj.E)
         {
            this.§6&§(responseObj);
            return;
         }
         if(sc.§<!=§())
         {
            for each(fnc in sc.§72§())
            {
               fnc.call(null,responseObj);
            }
         }
         else
         {
            §?p§.log("[ResponseHandler] Got message for disabled command, ignoring message");
         }
      }
      
      public function §6&§(param1:Object) : void
      {
         var _loc3_:Function = null;
         param1.E = true;
         var _loc2_:§5-§ = this.§extends§(param1.C);
         if(_loc2_.§<!=§())
         {
            for each(_loc3_ in _loc2_.§72§())
            {
               _loc3_.call(null,param1);
            }
         }
         else
         {
            §?p§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
         }
      }
      
      public function §79§(param1:String, param2:Function) : void
      {
         var _loc3_:§5-§ = new §5-§(param1,param2);
         this.§;!3§.push(_loc3_);
         §?p§.log("[ResponseHandler] Command: " + param1 + " added.");
      }
      
      public function §<`§() : Vector.<§5-§>
      {
         return this.§;!3§;
      }
      
      public function §extends§(param1:String) : §5-§
      {
         var _loc2_:§5-§ = null;
         for each(_loc2_ in this.§;!3§)
         {
            if(_loc2_.§9s§() == param1)
            {
               return _loc2_;
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
